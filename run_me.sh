#!/bin/bash

{
echo "# Notes, slides and stuff"
echo " "
echo "## Articles"
echo " "
} > README.md
find . -name "*.article" | while read line; do
    A_LINK=$(echo -n '- ' && echo "$line" | cut -d "." -f 2 -f 3 | xargs -L 1 echo " http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' ')
    NAME=$(echo "$A_LINK" | sed "s/http:\/\/go-talks.appspot.com\/github.com\/jecnua\/notes-presentations//")
    echo -e "[$NAME]($A_LINK) \n" >> README.md
done
{
echo " "
echo "## Slides"
echo " "
} >> README.md
find . -name "*.slide" | while read line; do
    A_LINK=$(echo -n '- ' && echo "$line" | cut -d "." -f 2 -f 3 | xargs -L 1 echo "http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' ')
    echo "$A_LINK" >> README.md
done
