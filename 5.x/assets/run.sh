#!/bin/bash

mkdir -p /var/atlassian/application-data/confluence
mv /temp-confuence-data-dir/* /var/atlassian/application-data/confluence
chown -R confluence:confluence /var/atlassian/application-data/confluence

/opt/atlassian/confluence/bin/start-confluence.sh -fg