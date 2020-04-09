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
hashfile="$(echo "$zipfile" | cut -f 1 -d '.').hash"
echo $hashfile
sudo zip2john $zipfile > $hashfile
sudo john -w=$wordlist $hashfile
pass=$(printf $(sudo john --show $hashfile) | cut -f2 -d ":")
7z x -p$pass $zipfile
printf -- '-%.0s' {1..80}; echo ""
echo "Password: $pass"
files=$(zipinfo -1 $zipfile)
echo "Files extracted: $files"
printf -- '-%.0s' {1..80}; echo ""
