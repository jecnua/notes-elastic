#!/bin/bash


# cat README_PRE.md > README.md
echo "# Notes, slides and stuff" > README.md
echo " " >> README.md
echo "## Articles" >> README.md
echo " " >> README.md
find . -name *.article | while read line; do
    HH=`echo '- ' && echo $line | cut -d "." -f 2 -f 3 | xargs -L 1 echo " http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' '`
    echo $HH >> README.md
    # echo " " >> README.md
done
echo " " >> README.md
echo "## Slides" >> README.md
echo " " >> README.md
find . -name *.slide | while read line; do
    HH=`echo '- ' && echo $line | cut -d "." -f 2 -f 3 | xargs -L 1 echo "http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' '`
    echo $HH >> README.md
    # echo " " >> README.md
done
