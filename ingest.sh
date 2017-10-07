#!/bin/sh

FOLDER=008qq
cd $HOME/src/plum
bundle exec rake lae:ingest /data/lae/folders/$FOLDER PROJECT="Latin American Ephemera"
