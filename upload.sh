#!/bin/bash

BUCKET="senko"

for d in `find ./ -type d | grep -v ".git"`; do
    dest=`echo $d | sed 's|./||'`
    s3cmd sync -c ../s3.cfg -v -P --no-check-md5 -m application/javascript $d/*.js s3://$BUCKET/$dest/
    s3cmd sync -c ../s3.cfg -v -P --no-check-md5 -m text/css               $d/*.css s3://$BUCKET/$dest/
done

s3cmd sync -c ../s3.cfg -v -P --no-check-md5 --exclude=".git/*" -M ./ s3://$BUCKET/
