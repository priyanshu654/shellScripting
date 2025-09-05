#!/bin/bash
#
<<comment
read -p "Enter your name:-" name
echo "my name is $name"
comment

<<comment
for((i=$2;i<=$3;i++))
do
	mkdir "$1 $i"
done

comment

read -p "Enter the number:-" inputN

if[[((inputN % 2))==0]];
then
	echo "Even number"
else
	echo "Odd number"
fi

