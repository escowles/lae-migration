#!/bin/sh

rm folders.txt
for i in `cat boxes.txt`; do
  grep $i ../folderboxes.txt | cut -d\  -f1 >> folders.txt
done
