#!/bin/sh

echo "packaging lae data for migration"

echo `date` listing all files
./files.sh

echo `date` making a list of pages
./pages.sh

echo `date` extracting page ids
./pageids.sh

echo `date` getting page/folder links
./pagefolders.sh

echo `date` making a list of folders
./folders.sh

echo `date` getting folder/box links
./folderboxes.sh

echo `date` making a list of boxes
./boxes.sh

echo `date` collecting page tech metadata
./pagetech.sh

echo `date` packaging box metadata
./collect-boxes.sh

echo `date` packaging folder metadata
./collect-folders.sh

echo `date` packaging page metadata
./collect-pages.sh

echo `date` done
