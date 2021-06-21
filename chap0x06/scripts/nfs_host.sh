#!/usr/bin/env bash

apt update

if [[ $? -ne 0 ]];then
	echo "apt update failed!"
	exit
fi

apt install nfs-kernel-server || echo "nfs-kernel-server failed!"

srv_pr="/var/nfs/gen_r"
srv_prw="/var/nfs/gen_rw"

if [[ ! -d "${srv_pr}" ]];then
        mkdir -p "${srv_pr}"
else
	        echo "${srv_pr} is already existed!"
fi
if [[ ! -d "${srv_prw}" ]];then
        mkdir -p "${srv_prw}"
else
	        echo "${srv_prw} is already existed!"
fi
srv_rsquash="/home/rsquash"
srv_no_rsquash="/home/no_rsquash"

if [[ ! -d "${srv_rsquash}" ]];then
	mkdir -p "${srv_rsquash}"
else
        echo "${srv_rsquash} is already existed!"
fi
if [[ ! -d "${srv_no_rsquash}" ]];then
        mkdir -p "${srv_no_rsquash}"
else
        echo "${srv_no_rsquash} is already existed!"
fi

chown nobody:nogroup "${srv_rsquash}"
chown nobody:nogroup "${srv_no_rsquash}"
client_ip="192.168.56.103"
cl_prw_op="rw,sync,no_subtree_check,no_root_squash"
cl_pr_op="ro,sync,no_subtree_check"
cl_prw_nors="rw,sync,no_subtree_check,no_root_squash"
cl_prw_rs="rw,sync,no_subtree_check"
conf="/etc/exports"
if [[ ! -f "${config}.bak" ]];then
	cp "$config" "$config".bak
fi
grep -q "$srv_pr" "$conf" && sed -i -e "#${srv_pr}#s#^[#]##g;#${srv_pr}#s#\ .*#${client_ip}($cl_pr_op)" "$conf" || echo "${srv_pr} ${client_ip}($cl_pr_op)" >> "$conf"

grep -q "$srv_prw" "$conf" && sed -i -e "#${srv_prw}#s#^[#]##g;#${srv_prw}#s#\ .*#${client_ip}($cl_prw_op)" "$conf" || echo "${srv_prw} ${client_ip}($cl_prw_op)" >> "$conf"

grep -q "$srv_no_rsquash" "$conf" && sed -i -e "#${srv_no_rsquash}#s#^[#]##g;#${srv_no_rsquash}#s#\ .*#${client_ip}  ($cl_prw_nors)" "$conf" || echo "${srv_no_rsquash} ${client_ip}($cl_prw_nors)" >> "$conf"

grep -q "$srv_rsquash" "$conf" && sed -i -e "#${srv_rsquash}#s#^[#]##g;#${srv_rsquash}#s#\ .*#${client_ip}  ($cl_prw_rs)" "$conf" || echo "${srv_rsquash} ${client_ip}($cl_prw_rs)" >> "$conf"

systemctl restart nfs-kernel-server
