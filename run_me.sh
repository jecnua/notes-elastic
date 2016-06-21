#!/bin/bash

#Slides

#Links
cat README_PRE.md > README.md

find . -name *.article | while read line; do
    HH=`echo $line | cut -d "." -f 2 -f 3 | xargs -L 1 echo "http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' '`
    echo $HH >> README.md
done
