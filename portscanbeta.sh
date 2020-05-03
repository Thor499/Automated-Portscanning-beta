#!/usr/bin/env bash

echo "######################################################################################"
echo "WELCOME TO AUTOMATED PORT SCANNING ~ Created & Published by @Thor499 - Reddit & GitHUb"
echo "######################################################################################"
echo
echo "Note: This tool requires root access, User is kindly advised to give root access"
echo "Ctrl+C to exit the tool"
echo
echo -e -n "Enter IP Address here:"
read ip

ping $ip -c3
echo
echo -e -n "Which type of Scan do you want to execute?(TCP or UDP):"
echo
echo "Note: Executing UDP scan sometimes requires user password"
read answer


	if [[ $answer = tcp ]];then
	echo
	echo -e -n "NOW SCANNING TCP PROTOCOLS USING NMAP!(Ctrl+C to stop the scan)"
	echo	
	echo
	nmap -vv $ip -Pn

	echo
	echo "SCANNING FINISHED"

	elif [[ $answer = udp ]];then
	echo
	echo -e -n "NOW SCANNING UDP PROTOCOLS USING NMAP!(Ctrl+C to stop the scan)"
	echo
	echo 
	sudo nmap -vv $ip -sU

	echo	
	echo "SCAN IS FINISHED"
else
	echo
	echo -e -n "NO ANSWER IS GIVEN, EXITTING THE TOOL"
	
fi

exit 0;
