#!/bin/bash

ARCH=$(uname -m)

echo "arch is $ARCH"
if [ "$ARCH" == "aarch64" ]
then
  FILENAME="go1.15.5.linux-arm64.tar.gz"
else
  FILENAME="go1.15.5.linux-amd64.tar.gz"
fi

echo "archecture  $FILENAME "

wget -nv https://golang.org/dl/$FILENAME

sudo tar -C /usr/local -xzf $FILENAME
