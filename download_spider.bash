#!/bin/bash

# default versions

SITE="http://www2.cit.cornell.edu/security/tools/Spider_Release_2008_Steatoda.zip"
WGET="-mc -nd --limit-rate=500k"

#GPG="--no-default-keyring --keyring priam.gpg"


wget ${WGET} ${SITE}

unzip Spider_Release_2008_Steatoda.zip Spider_Release_2008/Spider4.msi

sha256sum -c spider.sha256

echo "https://www.virustotal.com/file/`sha256sum < Spider_Release_2008/Spider4.msi | sed \"s/  -//\"`/analysis/"