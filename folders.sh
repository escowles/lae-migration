#!/bin/sh

cut -d\  -f2 pagefolders.txt | sort | uniq > folders.txt
