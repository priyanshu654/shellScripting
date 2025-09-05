#!/bin/bash
#
source=$1
destination=$2
timestamps=$(date '+%y-%m-%d-%H-%M-%S')

loadBackup() {
	zip -r "${destination}/backup_${timestamps}.zip" "${source}"

	if [[ $? -eq 0 ]]; then
		echo "Backup generated successfully for ${timestamps}"
	fi
	
}

loadBackup

rotation (){
	cd $destination || exit 1
#extra parenthesis to make it array
	files=($(ls -1t))

	echo "files in destination $destination"

	echo "${files[@]}"

	if [[ "${#files[@]}" -gt 5 ]];
	then
		remove_file=( "${files[@]:5}" )
		echo "removefile ${remove_file[@]}"

		for file in "${remove_file[@]}"; 
		do
			rm -r "${file}"
		done
	fi
}

rotation
