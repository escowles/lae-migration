#!/bin/sh

rm pages.txt
for i in `cat folders.txt`; do
  echo $i
  grep $i ../pagefolders.txt | cut -d\  -f1 >> pages.txt
done
