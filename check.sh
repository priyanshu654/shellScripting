#!/bin/bash
read -p "Enter the file name:-" fname

if [[ -d "$fname" ]];
then
	echo "Directory hai";
elif [[ -f "$fname" ]];
then 
	echo "File hai";
else
	echo "Doesnt exist";
fi
