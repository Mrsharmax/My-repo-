#!/bin/bash

while true
do 

echo -n "1 = File Else URL : "
read U


if [[ $U -eq 1 ]]; 
then

echo -n "Enter filename : "
read FILENAME

cd /Users/mrsharma/Desktop/Tools/sqlmapproject-sqlmap-3f0ffaf

echo -n "Enter parameter to test: "
read PAR

python sqlmap.py -r /Users/mrsharma/Desktop/SQLtest/$FILENAME -p $PAR --threads=10


else

	echo -n "Enter URL : "
read URL

cd /Users/mrsharma/Desktop/Tools/sqlmapproject-sqlmap-3f0ffaf

echo -n "Enter parameter to test: "
read PAR2

python sqlmap.py -u $URL -p $PAR2 --threads=10

fi


echo "Results end here 
----------------------------
"
done
