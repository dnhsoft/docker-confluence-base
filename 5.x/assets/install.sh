#!/bin/bash

/bin/bash /confluence-install.bin -q -varfile /response.varfile

/opt/atlassian/confluence/bin/stop-confluence.sh


mv /mysql-connector-java-5.1.35-bin.jar /opt/atlassian/confluence/confluence/WEB-INF/lib/

rm /confluence-install.bin
rm /response.varfile

mv /var/atlassian/application-data/confluence /temp-confuence-data-dir