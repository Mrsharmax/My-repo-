#!/bin/bash

while true
do 

echo -n "Enter Target: "
read TAR

echo -n "Add any extra parameter say Extension - 'add -recursion or add -e and then give externsion list saperated by comma : "
read USEROPTION2

echo -n "Select Wordlist :
"

echo -n "1 - RAFT big 
"

echo -n "2 - Subdomains - 1 : https
 "

echo -n "3 - Subdomains - Jhaddix
"

echo -n "4 - Admin Panels
"

echo -n "5 - DirSearch
"

echo -n "6 - Subdomains - 1 : http
 "
read USEROPTION

if [[ $USEROPTION -eq 1 ]]; 
then
	cd /Users/mrsharma/Desktop/Tools/ffuf_1.3.1_macOS_amd64/
./ffuf -w /Users/mrsharma/Desktop/wordlist/SecLists-master/Discovery/Web-Content/raft-large-directories.txt -u $TAR/FUZZ -c -v -ic $USEROPTION2 

elif [[ $USEROPTION -eq 2 ]]; 
	then
	cd /Users/mrsharma/Desktop/Tools/ffuf_1.3.1_macOS_amd64/
./ffuf -w /Users/mrsharma/Desktop/wordlist/SecLists-master/Discovery/DNS/bitquark-subdomains-top100000.txt -u https://FUZZ.$TAR -c -v -ic $USEROPTION2

elif [[ $USEROPTION -eq 3 ]]; 
	then
	cd /Users/mrsharma/Desktop/Tools/ffuf_1.3.1_macOS_amd64/
./ffuf -w /Users/mrsharma/Desktop/wordlist/SecLists-master/Discovery/DNS/dns-Jhaddix.txt -u $TAR/FUZZ -c -v -ic $USEROPTION2

elif [[ $USEROPTION -eq 4 ]]; 
	then
	cd /Users/mrsharma/Desktop/Tools/ffuf_1.3.1_macOS_amd64/
./ffuf -w /Users/mrsharma/Desktop/wordlist/general/admin-panels.txt -u $TAR/FUZZ -c -v -ic $USEROPTION2

elif [[ $USEROPTION -eq 5 ]]; 
	then
	cd /Users/mrsharma/Desktop/Tools/ffuf_1.3.1_macOS_amd64/
./ffuf -w /Users/mrsharma/Desktop/wordlist/SecLists-master/Discovery/Web-Content/directory-list-2.3-big.txt -u $TAR/FUZZ -c -v -ic $USEROPTION2

elif [[ $USEROPTION -eq 6 ]]; 
	then
	cd /Users/mrsharma/Desktop/Tools/ffuf_1.3.1_macOS_amd64/
./ffuf -w /Users/mrsharma/Desktop/wordlist/SecLists-master/Discovery/DNS/bitquark-subdomains-top100000.txt -u FUZZ.$TAR -c -v -ic $USEROPTION2

else 
	echo -n "Enter Wordlist: "
read WORD

cd /Users/mrsharma/Desktop/Tools/ffuf_1.3.1_macOS_amd64/
./ffuf -w $WORD -u $TAR/FUZZ -c -v $USEROPTION2

fi


echo "Results end here 
----------------------------
"
done