#!/bin/bash
str=$1
str=${str%.c}
gcc -fno-stack-protector -z execstack $str.c -o $str
