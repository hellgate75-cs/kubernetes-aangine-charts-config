#!/bin/sh
FOLDER="$(realpath ".")"
TARGET="$1"
if [ "" = "$TARGET" ]; then
  TARGET="/home/docker/kubernetes/aangine-config"
fi
echo "Copy of AAngine data config files into folder: $TARGET"
mkdir -p $TARGET
echo "Copy in progress ..."
cp -Rf config/* $TARGET
echo "Destination folder content:"
cd $TARGET && ls -la

