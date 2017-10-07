#!/bin/sh

BASE=/opt/fedora/data

N=0
for i in `cat pageids.txt`; do
  FOXML=`grep "$i" files.txt | grep objectStore`
  FOLDER=`grep "<ns1:isPartOf" $BASE/$FOXML | tail -1 | cut -d: -f5 | cut -d\" -f1`
  echo $i $FOLDER >> pagefolders.txt
  N=$(( $N + 1 ))
  if [ $(( $N % 100 )) = 0 ]; then
    echo $N
  fi
done
