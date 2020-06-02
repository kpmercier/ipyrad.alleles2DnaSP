#!/bin/sh

ls *.alleles | while read line
	do
	#echo "$line to DnaSP_$line"
	sed 's/\/\/.*/\/\//g' $line > 'DnaSP_'$line
	sed -i '' 's/     / /g' 'DnaSP_'$line
	tr ' ' '\n' < 'DnaSP_'$line > temp.txt && mv temp.txt 'DnaSP_'$line
	for i in $@
		do
		sed -i '' "s/$i/>$i/g" 'DnaSP_'$line
		done
	done