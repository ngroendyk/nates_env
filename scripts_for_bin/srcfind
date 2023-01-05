#!/bin/bash
# File: srcfind.sh
# Written By: Nate Groendyk
# Date: 26 July 2018
# Purpose: Quick little script to find the occurance of a string in our srctree
# if the first arg is a -i then it does case insensitive search of remaining
# args, else first arg is searched. 
# eg: srcfind -i SomeTeXt           case insensitive
# eg: srcfind SomeText              case sensitive.

if [ $# -eq 0 ]; then
    echo "Specify a string to search."
    exit 1
fi

if [[ $1 = "-i" ]]; then
    find $PWD -name "*.cpp" |xargs grep -H -n -i "$2"
    find $PWD -name "*.c" |xargs grep -H -n -i "$2"
    find $PWD -name "*.h" |xargs grep -H -n -i "$2"
    find $PWD -name "*.hpp" |xargs grep -H -n -i "$2"
else
    find $PWD -name "*.cpp" |xargs grep -H -n "$1"
    find $PWD -name "*.c" |xargs grep -H -n "$1"
    find $PWD -name "*.h" |xargs grep -H -n "$1"
    find $PWD -name "*.hpp" |xargs grep -H -n "$1"
fi

