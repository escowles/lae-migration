#!/bin/sh

FIXTURES=$HOME/src/lae_ephemera/db/fixtures
cd $HOME/src/plum

bundle exec rake vocab:load CSV=$FIXTURES/iso639-1.csv NAME="LAE Languages"
bundle exec rake vocab:load CSV=$FIXTURES/lae_areas.csv NAME="LAE Areas"
bundle exec rake vocab:load CSV=$FIXTURES/lae_genres.csv NAME="LAE Genres" LABEL=pul_label
bundle exec rake vocab:load CSV=$FIXTURES/lae_subjects.csv NAME="LAE Subjects" LABEL=subject CATEGORY=category
