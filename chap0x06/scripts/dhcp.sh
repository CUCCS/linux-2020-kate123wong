#!/usr/bin/env bash
apt update
if [[ $? -ne 0 ]];then
	echo "apt update failed!"
	exit
fi
apt install isc-dhcp-server -y

if [[ $? -ne 0 ]];then
	echo "install isc-dhcp-server failed"
	exit
fi
conf="/etc/dhcp/dhcpd.conf"
conf_def="/etc/default/isc-dhcp-server"
conf_inter="/etc/netplan/01-netcfg.yaml
if [[ ! -f "${conf}.bak" ]];then
	cp "${conf}" "${conf}".bak
else
	echo "${conf}.bak already exits!"
fi
if [[ ! -f "${conf_def}.bak" ]];then
	cp "${conf_def}" "${conf_def}".bak
else
	echo "${conf_def}.bak already exits!"
fi

if [[ ! -f "${conf_inter}.bak" ]];then
	cp "${conf_inter}" "${conf_inter}".bak
else
	echo "${conf_inter}.bak already exits!"
fi

min_time=600
max_time=7200
inter="enp0s9"
subnet="192.168.57.0"
netmask="255.255.255.0"
range_ip_l="192.168.57.150"
range_ip_r="192.168.57.200"
cat<<EOT >>"$conf"
subnet 192.168.57.0 netmask 255.255.255.0 {
	# client's ip address range
	range ${range_ip_l} ${range_ip_r};
	default-lease-time ${min_time};
	max-lease-time ${max_time};
}
EOT
cat<<EOT >> "$conf_inter"
    enp0s9:
	dhcp4: no
	addresses: [192.168.57.1/24]
EOT
sed -i -e "/INTERFACESv4=/s/^[#]//g;/INTERFACESv4=/s/\=.*/=\"${inter}\"/g" "$conf_def"
systemctl restart isc-dhcp-server

