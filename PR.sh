#!/bin/bash

<<info
Daily Backup of shellscript

eg.
./backup.sh <source> <dest>

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "backupDone"

