#!/bin/bash

# default versions

FILE="pfSense-2.0.1-RELEASE-amd64.iso.gz"
SITE="http://files.uk.pfsense.org/mirror/downloads/$FILE"
WGET="-mc -nd --limit-rate=500k"

#GPG="--no-default-keyring --keyring priam.gpg"


wget ${WGET} ${SITE}
wget ${WGET} ${SITE}.sha256

sha256sum -c ${FILE}.sha256

