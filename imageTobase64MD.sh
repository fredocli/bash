#!/bin/bash

# get the name without extension
filename=$(basename $1)
filename=${filename%.*}
echo filename=$filename

# Get the mime-type
mimetype=$(file --mime-type -b $1)
mimetype=$(echo "$mimetype"|sed 's/\//\\\//')
echo mimetype=$mimetype

uuencode -m $1 /dev/stdout | sed '1d' | sed '$d' | tr -d '\n' |sed "s/^/\!\[${filename}\]\(data:${mimetype};base64,/"  | sed 's/$/\)/' | xclip -selection clipboardimage
