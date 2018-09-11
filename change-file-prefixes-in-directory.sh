#!/bin/bash

# Script to rename bulk files in Directory

# $1 - directory
# $2 - new prefix

filenames="$(find $1 -name 'Wv*')"
newPrefix="/";
delimeter="/Wv";
echo $newPrefix;
echo $delimeter;
for fileName in $filenames; 
do     
	echo "> [$fileName]";
	#Change FileName
	result="$($fileName/$delimeter/$newPrefix//)";
	echo "$result";
	newFileName="${string/$delimeter/$newPrefix}";
	echo $newFileName;
	# mv oldFilename newFilename
done

