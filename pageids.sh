#!/bin/sh

cat pages.txt | cut -d% -f4 | cut -c3- > pageids.txt
paste pages.txt pageids.txt > masterImage.txt
