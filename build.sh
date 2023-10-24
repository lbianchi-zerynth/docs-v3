#!/bin/sh

DOCPATH=$1

if [ -z "$DOCPATH" ]; then
    DOCPATH=${PWD}
fi

echo "Listening to localhost:8081"

docker run --rm -t -p 8081:8000 -v ${DOCPATH}:/docs squidfunk/mkdocs-material:7.1.0 $2
