#!/usr/bin/env bash
#判断目标主机是否安装vsftpd
command -v vsftpd > /dev/null
if [[ $? -ne 0 ]];then 
	apt install vsftpd -y
	if [[ $? -ne 0 ]];then
		echo "failed to install vsftpd!"
		exit
	fi
else
	echo "vsftpd is already installed!"
fi

conf=/etc/vsftpd.conf
if [[ ! -f "${conf}.bak" ]];then
	cp "${conf}" "${conf}.bak"
else
	echo "${conf}.bak already exits!"
fi

#匿名用户访问设置
anon_path="/var/ftp/pub"
if [[ ! -d "${anon_path}" ]];then
	mkdir -p "${anon_path}"
fi

#设置访问权限
chown nobody:nogroup "${anon_path}"
echo "vsftpd test file" | sudo tee "${anon_path}/test.txt"

#修改vsftpd配置,允许匿名访问
sed -i -e "/anonymous_enable=/s/^[#]//g;/anonymous_enable=/s/NO/YES/g" "${conf}"
sed -i -e  "/anon_upload_enable=/s/^[#]//g;/anon_upload_enable=/s/YES/NO/g" "${conf}"
sed -i -e "/anon_mkdir_write_enable=/s/^[#]//g;/anon_mkdir_write_enable/s/YES/NO/g" "${conf}"

grep -q "anon_root=" "${conf}" && sed -i -e "#anon_root=#s#^[#]##g;#anon_root=#s/#\=.*#=/var/ftp#g" "${conf}" || echo "anon_root=/var/ftp" >>"${conf}"
grep -q "no_anon_password=" "${conf}" && sed -i -e "/no_anon_password=/s/^[#]//g;/no_anon_password=/s/\=.*/=YES/g" "${conf}" || echo "no_anon_password=YES" >> "${conf}"

#设置用户名＋密码访问的账号
user="katy"
#添加
if [[ $(grep -c "^${user}:" /etc/passwd) -eq 0 ]]; then
	adduser ${user}
else
	echo "${user} is already existed!"
fi

#创建用户目录
user_path="/home/${user}/ftp"
if [[ ! -d ${user_path} ]]; then
	mkdir "${user_path}"
else
	echo "${user_path} is already existed!"
fi
#权限设置
chown nobody:nogroup "${user_path}"
chmod a-w "${user_path}"
ls -la "${user_path}"

#为用户创建upload目录
user_write_path="${user_path}/files"
if [[ ! -d "${user_write_path}" ]];then
	mkdir "${user_write_path}"
else
	echo "${user_write_path} is already existed!"
fi
chown "${user}":"${user}" "${user_write_path}"
ls -la "${user_path}"
echo "vsftpd test file" | tee "${user_write_path}/test.txt"

#更改配置
sed -i -e "/local_enable=/s/^[#]//g;/local_enable=/s/NO/YES/g" "${conf}"
sed -i -e "/write_enable=/s/^[#]//g;/write_enable=/s/NO/YES/g" "${conf}"
#限制用户权限只限于用户目录
sed -i -e "/chroot_local_user=/s/^[#]//g;/chroot_local_user=/s/NO/YES/g" "${conf}"

# 设置目标主机用于FTP的范围
port_min=40000
port_max=50000
grep -q "pasv_min_port=" "$conf" && sed -i -e "/pasv_min_port=/s/^[#]//g;/pasv_min_port=/s/\=.*/=${port_min}/g" "$conf" || echo "pasv_min_port=${port_min}" >> "$conf"
grep -q "pasv_max_port=" "$conf" && sed -i -e "/pasv_max_port=/s/^[#]//g;/pasv_max_port=/s/\=.*/=${port_max}/g" "$conf" || echo "pasv_max_port=${port_max}" >>  "$conf"

# 限制用户只有添加到userlist才能访问
grep -q "userlist_enable=" "$conf" && sed -i -e "/userlist_enable=/s/^[#]//g;/userlist_enable=/s/\=.*/=YES/g" "$conf" || echo "userlist_enable=YES" >> "$conf"

grep -q "userlist_file=" "$conf" && sed -i -e "#userlist_file=#s#^[#]##g;#userlist_file=#s#\=.*#=/etc/vsftpd.userlist#g" "$conf" || echo "userlist_file=/etc/vsftpd.userlist" >> "$conf"
# only user on the list allow access
grep -q "userlist_deny=" "$conf" && sed -i -e "/userlist_deny=/s/^[#]//g;/userlist_deny=/s/\=.*/=NO/g" "$conf" || echo "userlist_deny=NO" >> "$conf"

# 将用户添加到userlist
grep -q "$user" /etc/vsftpd.userlist ||  echo "$user" | tee -a /etc/vsftpd.userlist
grep -q "anonymous" /etc/vsftpd.userlist || echo "anonymous" | tee -a /etc/vsftpd.userlist

#只允许白名单访问
grep -q "tcp_wrappers=" "$conf" && sed -i -e "/tcp_wrappers=/s/^[#]//g;/tcp_wrappers=/s/NO/YES/g" "$conf" || echo "tcp_wrappers=YES" >> "$conf"
grep -q "vsftpd:ALL" /etc/hosts.deny || echo "vsftpd:ALL" >> /etc/hosts.deny
grep -q "vsftpd:192.168.56.103" /etc/hosts.allow || echo "vsftpd:192.168.56.103" >> /etc/hosts.allow
grep -q "allow_writeable_chroot=" "$conf" && sed -i -e "/allow_writeable_chroot=/s/^[#]//g;/allow_writeable_chroot=/s/NO/YES/g" "$conf" || echo "allow_writeable_chroot=YES" >> "$conf"

if pgrep -x "vsftpd" > /dev/null;then
	systemctl restart vsftpd
else 
	systemctl start vsftpd
fi
