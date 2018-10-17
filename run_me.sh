#!/bin/bash

{
echo "# Notes, slides and stuff"
echo " "
echo '[![Build Status](https://travis-ci.com/jecnua/notes-presentations.svg?branch=master)](https://travis-ci.com/jecnua/notes-presentations)'
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
{
echo " "
echo "## Slides"
echo " "
} >> README.md
find . -name "*.slide" | while read -r line; do
  temp=$(echo "$line" | cut -d "." -f 2)
  LINK_NAME=${temp#/}
  LINK_ADDRESS="http://go-talks.appspot.com/github.com/jecnua/notes-presentations/$LINK_NAME.slide"
  echo -e "- [$LINK_NAME]($LINK_ADDRESS)" >> README.md
done
