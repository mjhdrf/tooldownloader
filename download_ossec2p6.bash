#!/bin/bash

# default versions

VERSION=2.6

FILE="ossec-hids-${VERSION}.tar.gz"
SITEN="www.ossec.net"
SITE="http://${SITEN}/files/$FILE"
WGET="-mc -nd --limit-rate=500k"

GPG="--no-default-keyring --keyring ossec.gpg"

gpg ${GPG} --recv-keys A3901351

gpg ${GPG} --fetch-keys http://${SITEN}/files/OSSEC-PGP-KEY.asc

wget ${WGET} ${SITE}
wget ${WGET} ${SITE}.sig


gpg ${GPG} --verify ${FILE}.sig ${FILE}

