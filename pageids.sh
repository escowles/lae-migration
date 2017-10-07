#!/bin/sh

cat masterImage.txt | cut -d% -f4 | cut -c3- > pageids.txt
