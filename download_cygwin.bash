#!/bin/bash

# default versions

VERSION=3.4.1

FILE="setup.exe"
SITE="http://cygwin.com/$FILE"
WGET="-mc -nd --limit-rate=500k"

GPG="--no-default-keyring --keyring cygwin.gpg"

gpg --no-default-keyring --keyring cygwin.gpg --recv-keys 676041BA

gpg --no-default-keyring --keyring cygwin.gpg --fetch-keys http://cygwin.com/key/pubring.asc

wget ${WGET} ${SITE}
wget ${WGET} ${SITE}.sig


gpg ${GPG} --verify ${FILE}.sig ${FILE}

