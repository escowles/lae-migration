#!/bin/bash

BASE=/opt/fedora/data
UNIT=pages

function get
{
  ID=$1
  FILTER=$2
  DEST=$3

  PP=`echo $ID | cut -c1-2`/$ID

  FILES=`grep $ID files.txt | grep $FILTER`
  F=`cd $BASE; ls -t $FILES | head -1`
  if [ ! -f $UNIT/$PP/$DEST -o $BASE/$F -nt $UNIT/$PP/$DEST ]; then
    cp -v $BASE/$F $UNIT/$PP/$DEST
  fi
}

for i in `cat pageids.txt`; do
  PP=`echo $i | cut -c1-2`
  mkdir -p $UNIT/$PP/$i
  get $i objectStore foxml 
  get $i descMetadata descMetadata
  get $i masterTechMetadata masterTechMetadata
  get $i provMetadata provMetadata
  get $i rightsMetadata rightsMetadata 
done
