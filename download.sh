#!/bin/bash

DIST=${PWD}/distfiles

function verify_hash() {
    local hash=$1
    local filepath=$2
    echo "$hash *$filepath" | shasum --status -c -
    return $?
}

echo " * Checking distfiles"
for LINE in `cat files` ; do
    FILE=`echo $LINE | cut -d'@' -f1`
    echo " * File $FILE"
    HASH=`echo $LINE | cut -d'@' -f2`
    URL=`echo $LINE | cut -d'@' -f3`
    if [ ! -f $DIST/$FILE ] ; then
        echo " * Downloading $FILE"
        wget -O $DIST/$FILE $URL
    fi
    verify_hash $HASH "$DIST/$FILE"
    if [ $? != 0 ] ; then
        echo " * Resume downloading $FILE"
        wget -c -O $DIST/$FILE $URL

        verify_hash $HASH "$DIST/$FILE"
        if [ $? != 0 ] ; then
            echo " !!! Hash mismatch for $FILE"
            exit 1
        fi
    fi
done
echo " * Done checking distfiles"

