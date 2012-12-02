#!/bin/bash

# get the name without extension

filename=$(basename )
filename=${filename%.*}
echo filename=$filename

# Get the mime-type

mimetype=$(file --mime-type -b )


uuencode -m Desktop/logo.png /dev/stdout | sed '1d' | sed '$d' | tr -d '\n' |sed s/^/\!\[${filename}
\]\(data:${minetype};base64,/  |sed s/$/\)/ | xclip -selection clipboardimage
