#! /bin/bash

TITLE=$(date "+%Y%m%d%H%M%S")
DESCRIPTION=
PUB_DATETIME=$(date --iso-8601=seconds)

FILENAME=src/content/blog/$TITLE.md

{
    echo "---"
    echo "pubDatetime: $PUB_DATETIME"
    echo "title: \"$TITLE\""
    echo "description: \"$DESCRIPTION\""
    echo "tags: "
    echo " - note"
    echo "---"
} >> $FILENAME
