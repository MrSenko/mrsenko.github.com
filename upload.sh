#!/bin/bash

BUCKET="mrsenko.com"
S3CMD=~/private/repos/github/s3cmd/s3cmd

for d in `find ./ -type d | grep -v ".git"`; do
    dest=`echo $d | sed 's|./||'`
    $S3CMD sync -c ../s3.cfg -v -P --no-check-md5 -m application/javascript $d/*.js s3://$BUCKET/$dest/
    $S3CMD sync -c ../s3.cfg -v -P --no-check-md5 -m text/css               $d/*.css s3://$BUCKET/$dest/
done

$S3CMD sync -c ../s3.cfg -v -P --no-check-md5 --exclude=".git/*" -M ./ s3://$BUCKET/
