#!/bin/bash

CONFLUENCE_DATA_DIR=/var/atlassian/application-data/confluence

mkdir -p $CONFLUENCE_DATA_DIR

if [ "$(ls -A $CONFLUENCE_DATA_DIR)" ]; then
    echo "Directory $CONFLUENCE_DATA_DIR is not empty and will not be modified"
else
    mv /temp-confuence-data-dir/* $CONFLUENCE_DATA_DIR
    chown -R confluence:confluence $CONFLUENCE_DATA_DIR
fi

/opt/atlassian/confluence/bin/start-confluence.sh -fg

