#!/bin/bash

# Usage: ./svg-to-dxf.sh my-image.svg
# What it does: creates eps and dxf files
# Requires: inkscape and pstoedit

svgfile=$1; shift

filebase=`basename $svgfile .svg`
inkscape -E $filebase.eps $filebase.svg
wait
pstoedit -dt -f dxf:-polyaslines $filebase.eps $filebase.dxf
wait
rm -f $filebase.eps

echo "New file: $filebase.dxf"
