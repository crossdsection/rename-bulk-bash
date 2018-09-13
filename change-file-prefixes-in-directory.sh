#!/bin/bash

# Script to rename bulk files in Directory

# $1 - directory
# $2 - old prefix
# $3 - new Prefix
preFix="$2*"; 
filenames="$(find $1 -name $preFix)"
newPrefix="/$3";
delimeter="/$2";
echo $newPrefix;
echo $delimeter;
for fileName in $filenames; 
do     
	#Change FileName
	result="${fileName/$delimeter/$newPrefix}"
	# mv oldFilename newFilename
	echo $fileName;
	echo $result;
	mv $fileName $result;
done

