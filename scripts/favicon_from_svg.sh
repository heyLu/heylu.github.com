#!/bin/sh

# A little script to create a favicon from a SVG file using Inkscape
# and ImageMagick's `convert`.

if [ $# -lt 2 ]; then
	echo "Usage: $0 <svg_source> <ico_file>"
	exit 1
fi

svg_source=$1
ico_file=$2

png16=`mktemp 16-XXXXX.png`
png32=`mktemp 32-XXXXX.png`
png64=`mktemp 64-XXXXX.png`
png128=`mktemp 128-XXXXX.png`
png256=`mktemp 256-XXXXX.png`

inkscape $svg_source --export-png $png256 --export-width=256 --export-height=256
convert $png256 -resize 16x16 $png16
convert $png256 -resize 16x16 $png32
convert $png256 -resize 16x16 $png64
convert $png256 -resize 16x16 $png128

convert $png16 $png32 $png64 $png128 $png256 -colors 256 $ico_file

rm -f $png16 $png32 $png64 $png128 $png256
