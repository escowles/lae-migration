#!/bin/sh

cut -d\  -f2 folderboxes.txt | sort | uniq > boxes.txt
