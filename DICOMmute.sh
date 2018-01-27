#!/bin/bash

for FILE in ls $@*
do
    if [[ $(file $FILE | cut -f2 -d ' ') == DICOM ]]; 
		then
			echo "Converting $FILE to $FILE.jpg"
			dcmj2pnm +oj $FILE $FILE.jpg
		else
			continue
	fi 

done