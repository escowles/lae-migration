#!/bin/sh

BASE=/opt/fedora/data

N=0
for i in `cat folders.txt`; do
  FOXML=`grep "$i" files.txt | grep objectStore`
  BOX=`grep "inBox" $BASE/$FOXML | cut -d: -f5 | cut -d\" -f1`
  echo $i $BOX >> folderboxes.txt
  N=$(( $N + 1 ))
  if [ $(( $N % 100 )) = 0 ]; then
    echo $N
  fi
done
