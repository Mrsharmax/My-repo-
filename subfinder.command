#!/bin/bash

while true
do 

subfinder - h 

echo -n "Enter Target: "
read TAR

echo -n "Add any extra parameter say Extension - 'add -recursion or add -e and then give externsion list saperated by comma : "
read USEROPTION2

echo -n "Select 1 for silent"
read USEROPTION

if [[ $USEROPTION -eq 1 ]]; 
	then
subfinder -d $TAR -config config.yaml -o /Users/mrsharma/Desktop/Output-subfinder/$RANDOM.$TAR.txt -silent -t 10 | httpx -title -tech-detect -status-code -cdn -cname -ports http:443,http:80,https:8443 -http2 -ip -verbose

else 

subfinder -d $TAR -config config.yaml -o /Users/mrsharma/Desktop/Output-subfinder/$RANDOM.$TAR.txt -t 10 -v | httpx -title -tech-detect -status-code -cdn -cname -ports http:443,http:80,https:8443 -ip -verbose

read USEROPTION

fi 

done