#!/bin/bash
if [ "$#" -lt "1" ]
then
	echo "Use -h for help"
fi
wordlist="/usr/share/wordlists/rockyou.txt"
zipfile=$1
if [ "$1" == "-w" ]
then
	echo "set w"
	wordlist=$2
	zipfile=$3
fi
echo $wordlist
echo $zipfile
hashfile=$(echo "$zipfile" | cut -f 1 -d '.')
echo "$hashfile.hash"

	

