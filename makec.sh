#!/bin/bash
###################################################
#             Created By Eng.Pscyho               #
###################################################
gcc $1.c -lcs50 -o $1
chmod 777 $1
./$1
