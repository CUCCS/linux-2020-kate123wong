#!usr/bin/env bash


apt update

if [[ $? -ne 0 ]];then
	echo "apt update failed"
	exit
fi

apt install samba -y
if [[ $? -ne 0 ]];then
	echo "install samba failed"
	exit
fi
				
apt install samba-client -y
if [[ $? -ne 0 ]];then
	echo "install samba failed"
	exit
fi

mkdir -p "/var/samba/mount_path"
if [[ $? -ne 0 ]];then
	echo "mkdir mount_path failed"
	exit
fi


