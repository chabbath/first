#!/bin/bash
function f {
for i in $1/*; do
	if [ -d $i ]; then
	echo -e "[\e[33mDIR\e[0m] "$i; f $i; 
	else
		if [ -f $i ]; then         
			echo -e "[\e[32mFILE\e[0m] " "\e[34m" `file -b $i` "\e[0m" `md5sum $i`;
		fi
	fi
	
done;
}
if [ $1 == "-v" ]; then
	echo "chabcheck v0.0.1a";
else
 if [ $1 == "-h" ]; then
	echo "Frist paramater is a destination";
else 
	f $1;
fi
fi
