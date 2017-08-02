#!/bin/bash

#Slides

#Links
# cat README_PRE.md > README.md
echo "# Links" > README.md
# echo " "
echo "## Articles" > README.md
# echo " "
find . -name *.article | while read line; do
    # printf "-" >> README.md
    HH=`echo $line | cut -d "." -f 2 -f 3 | xargs -L 1 echo " http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' '`
    echo $HH >> README.md
    # echo " " >> README.md
done
echo "## Slides" >> README.md
echo " "
find . -name *.slide | while read line; do
    HH=`echo $line | cut -d "." -f 2 -f 3 | xargs -L 1 echo "http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' '`
    echo $HH >> README.md
    echo " " >> README.md
done
