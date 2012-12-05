#!/bin/bash

# default versions

VERSION=3.4.1

FILE="Apache_OpenOffice_incubating_${VERSION}_Win_x86_install_en-GB.exe"
SITE="http://heanet.dl.sourceforge.net/project/openofficeorg.mirror/localized/en-GB/${VERSION}/$FILE"
WGET="-mc -nd --limit-rate=500k"

GPG="--no-default-keyring --keyring priam.gpg"


wget ${WGET} ${SITE}
wget ${WGET} ${SITE}.asc


gpg --verify ${FILE}.asc ${FILE}