#!/bin/bash

currentPath=$(pwd)

cd "${currentPath}"

files=($(ls -1t));

echo "Total files ${#files[@]}"

echo "first file ${files[0]}"

last_index=$(( ${#files[@]} -1 ))

echo "last file ${files[$last_index]}"
