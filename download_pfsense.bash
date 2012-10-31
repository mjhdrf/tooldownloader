#!/bin/bash

# default versions

SITE="http://files.uk.pfsense.org/mirror/downloads/pfSense-2.0.1-RELEASE-amd64.iso.gz"
WGET="-mc -nd --limit-rate=500k"

#GPG="--no-default-keyring --keyring priam.gpg"


wget ${WGET} ${SITE}
wget ${WGET} ${SITE}.sha256

unzip Spider_Release_2008_Steatoda.zip Spider_Release_2008/Spider4.msi

sha256sum -c ${SITE}.sha256

