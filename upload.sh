#!/bin/bash

BUCKET="mrsenko.com"
S3CMD=~/private/repos/github/s3cmd/s3cmd

# first render HTML from templates
for tmpl in `find -name "*.jinja"`; do
    html_file=`echo "$tmpl" | sed "s/.jinja/.html/"`
    ./render.py "$tmpl" > "$html_file"
    if [ $? -ne 0 ]; then
        echo "RENDERING FAILED ...."
        exit 99
    fi
done

#exit 88

for d in `find ./ -type d | grep -v ".git"`; do
    dest=`echo $d | sed 's|./||'`
    $S3CMD sync -c ../s3.cfg -v -P --no-check-md5 -m application/javascript $d/*.js s3://$BUCKET/$dest/
    $S3CMD sync -c ../s3.cfg -v -P --no-check-md5 -m text/css               $d/*.css s3://$BUCKET/$dest/
done

$S3CMD sync -c ../s3.cfg -v -P --no-check-md5 --exclude=".git/*" -M ./ s3://$BUCKET/
