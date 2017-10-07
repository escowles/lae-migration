#!/bin/bash

BASE=/opt/fedora/data
UNIT=folders

function get
{
  ID=$1
  FILTER=$2
  DEST=$3

  FILES=`grep $ID files.txt | grep $FILTER`
  F=`cd $BASE; ls -t $FILES | head -1`
  if [ ! -f $UNIT/$ID/$DEST ]; then
    cp -v $BASE/$F $UNIT/$ID/$DEST
  fi
}

for i in `cat $UNIT.txt`; do
  mkdir -p $UNIT/$i
  get $i objectStore foxml 
  get $i descMetadata descMetadata
  get $i provMetadata provMetadata
  get $i rightsMetadata rightsMetadata 
done
