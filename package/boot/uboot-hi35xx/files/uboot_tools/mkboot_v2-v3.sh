#! /bin/sh

[ -n "$1" ] || { 
	echo ""; 
	echo "usage:"; 
	echo "     mkboot.sh <config file> <output file>"; 
	echo "     e.g." 
		echo "     mkboot.sh reg_info.bin u-boot-ok.bin"; 
	echo ""; 
	exit 1; 
}

[ -n "$2" ] || {
	echo ""; 
	echo "usage:"; 
	echo "     mkboot.sh <config file> <output file>"; 
	echo "     e.g." 
		echo "     mkboot.sh reg_info.bin u-boot-ok.bin"; 
	echo ""; 
	exit 1; 
}

dd if=./u-boot.bin of=./fb1 bs=1 count=64
dd if=$1 of=./fb2 bs=4096 conv=sync
dd if=./u-boot.bin of=./fb3 bs=1 skip=4160
cat fb1 fb2 fb3 > $2
rm -f fb1 fb2 fb3

