#!/bin/bash

<< comment
read -p "Enter the bandi name:- " name
read -p "Enter pyaar %:-" pyaar
if [[ $name == "daya bhabhi" ]];
then 
	echo "jetha is loyal "
elif [[ $pyaar -ge 100 ]];
then
	echo "jetha is loyal"
else
	echo "Jetha is not loyal"
fi

comment

for (( i=0 ; i <= 5 ; i++));
do
	echo $i
done

echo "While loop printing"

num=5

while((num>=0));
do
	echo "priyanshu $num"
	((num--))
done





