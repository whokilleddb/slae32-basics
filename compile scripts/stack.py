#!/usr/bin/python
import sys
import os

if len(sys.argv) != 2 :
	print "[-] Usage : python {} <stuff to convert>".format(os.path.basename(__file__))
	sys.exit(0)

name=sys.argv[1]

print "[+] Converting : ", name

rname=name[::-1]
print "[+] Reversing : ", rname
toHex=(str)(rname.encode('hex'))
print "[+] Hexing The Reverse String : ", toHex
lenHex=len(toHex)
print "[+] Length Of Hex : ", lenHex
print "[+] 32 Bit Chunks : "
i=0
for i in range(lenHex):
	if (i+1)%8 == 0:
		nstr=toHex[:8]
		print "[+]",nstr
		toHex=toHex[8:]
