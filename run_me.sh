#!/bin/bash

{
echo "# Notes, slides and stuff"
echo " "
echo "## Articles"
echo " "
} > README.md
find . -name "*.article" | while read -r line; do
  temp=$(echo "$line" | cut -d "." -f 2)
  LINK_NAME=${temp#/}
  LINK_ADDRESS="http://go-talks.appspot.com/github.com/jecnua/notes-presentations/$LINK_NAME.article"
  echo -e "- [$LINK_NAME]($LINK_ADDRESS)" >> README.md
done
# {
# echo " "
# echo "## Slides"
# echo " "
# } >> README.md
# find . -name "*.slide" | while read -r line; do
#   A_LINK=$(echo "$line" | cut -d "." -f 2 -f 3 | xargs -L 1 echo " http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' ')
#   NAME=$(echo "$line" | cut -d "." -f 2 -f 3)
#   echo -e "- [$NAME]($A_LINK)" >> README.md
# done
