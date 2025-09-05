#!/bin/bash
#
read -p "enter the string " text

len="${#text}"
echo "Length of string $len"

ans=""

for (( i=len-1 ; i>=0 ; i-- ));
do
	ans+=${text:i:1}
done

echo "reversed string $ans"

lc=$(( len -1 ))
echo "last char ${text:lc:1} "
echo "First chat ${text:0:1} "

