#!/bin/bash

<<info
Daily Backup of shellscript
This line is added to Daily Backup Script for confirmation that it isworking fine with CRON
Remember to close CRON if its not required
eg.
./backup.sh <source> <dest>

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "backupDone"

