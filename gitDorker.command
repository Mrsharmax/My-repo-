#!/bin/bash

while true
do 

echo -n "Enter Target: "
read TAR
cd /Users/mrsharma/Desktop/Tools/GitDorker
python3 GitDorker.py -tf tf/TOKENSFILE -q $TAR -d Dorks/alldorksv3 -o /Users/mrsharma/Desktop/Output-gitdorker/$TAR.txt

done