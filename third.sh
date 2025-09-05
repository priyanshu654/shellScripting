#!/bin/bash
#

function createFolder() {

	mkdir "demo"
}

if ! createFolder;
then
	echo "file already created"
	exit 1
fi

echo "My name is priyanshu" 



