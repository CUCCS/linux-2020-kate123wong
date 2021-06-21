#!usr/bin/env bash
#apt update
#if [[ $? -ne 0 ]];then
#	echo "apt update failed!"
#	exit
#fi

apt install nfs-common || echo "installing nfs-common failed!"&& exit

srv_ip="192.168.56.104"
cl_prw="/nfs/gen_rw"
srv_prw="/var/nfs/gen_rw"
cl_pr="/nfs/gen_r"
srv_pr="/var/nfs/gen_r"
cl_prw_nors="/nfs/no_rsquash"
srv_prw_nors="/home/no_rsquash"
cl_prw_rs="/nfs/rsquash"
srv_prw_rs="/home/rsquash"

mkdir -p "$cl_prw"
mkdir -p "$cl_pr"
mkdir -p "$cl_prw_nors"
mkdir -p "$cl_prw_rs"

mount "$srv_ip":"$srv_prw" "$cl_prw"
mount "$srv_ip":"$srv_pr" "$cl_pr"
mount "$srv_ip":"$srv_prw_nors" "$cl_prw_nors"
mount "$srv_ip":"$srv_prw_rs" "$cl_prw_rs"

