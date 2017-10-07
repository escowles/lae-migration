#!/bin/sh

BASE=/opt/fedora/data

for i in `cat pageids.txt`; do
  FILE=`grep $i masterImage.txt`
  TECH=`grep "$i%2FmasterTechMetadata" files.txt`
  MD5=`grep "<md5checksum" $BASE/$TECH | cut -d\> -f2 | cut -d\< -f1`
  SIZE=`grep "<size" $BASE/$TECH | cut -d\> -f2 | cut -d\< -f1`
  echo $i $FILE $MD5 $SIZE >> pagetech.txt
done
