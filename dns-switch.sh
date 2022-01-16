#!/bin/bash

printf "\n[1]Cloudflare:        1.1.1.1, 1.0.0.1\n"
printf "[2]Quad9:             9.9.9.9, 149.112.112.112\n"
printf "[3]Level3:            209.244.0.3, 209.244.0.4\n"
printf "[4]Level3 (2):        4.2.2.1, 4.2.2.2\n"
printf "[5]Level3 (3):        4.2.2.3, 4.2.2.4\n"
printf "[6]OpenDNS Home:      208.67.222.222, 208.67.220.220\n"
printf "[7]Verisign:          64.6.64.6, 64.6.65.6\n"
printf "[8]Comodo Secure DNS: 8.26.56.26, 8.20.247.20\n"
printf "\n"

while [ 0 -eq 0 ];
do
	read -p "Select DNS: " selecdns
	if [ $selecdns -eq 1 ];
	then
		printf "#Cloudflare\nnameserver 1.1.1.1\nnameserver 1.0.0.1\n" > /etc/resolv.conf
	fi

	if [ $selecdns -eq 2 ];
	then
		printf "#Quad9\nnameserver 9.9.9.9\nnameserver 149.112.112.112\n" > /etc/resolv.conf
	fi

	if [ $selecdns -eq 3 ];
	then
		printf "#Level3\nnameserver 209.244.0.3\nnameserver 209.244.0.4\n" > /etc/resolv.conf
	fi

	if [ $selecdns -eq 4 ];
	then
		printf "#Level3 (2)\nnameserver 4.2.2.1\nnameserver 4.2.2.2\n" > /etc/resolv.conf
	fi

	if [ $selecdns -eq 5 ];
	then
		printf "#Level3 (3)\nnameserver 4.2.2.3\nnameserver 4.2.2.4\n" > /etc/resolv.conf
	fi

	if [ $selecdns -eq 6 ];
	then
		printf "#OpenDNS Home\nnameserver 208.67.222.222\nnameserver 208.67.220.220\n" > /etc/resolv.conf
	fi

	if [ $selecdns -eq 7 ];
	then
		printf "#Verisign\nnameserver 64.6.64.6\nnameserver 64.6.65.6\n" > /etc/resolv.conf
	fi

	if [ $selecdns -eq 8 ];
	then
		printf "#Comodo Secure DNS\nnameserver 8.26.56.26\nnameserver 8.20.247.20\n" > /etc/resolv.conf
	fi

done


cat /etc/resolv.conf
