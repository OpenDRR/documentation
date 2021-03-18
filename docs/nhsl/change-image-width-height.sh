#!/bin/bash
#
# Quick-and-dirty script to change the image dimensions listed in .adoc file

for i in `seq 1 23`; do
  dimension=$(file media/image$i.jpg | cut -d ' ' -f 18 | sed -e 's/,//')
  width=$(echo $dimension | cut -d'x' -f1)
  height=$(echo $dimension | cut -d'x' -f2)

  width=$((width / 2))
  height=$((height / 2))
  sed -i \
    -e '/image'$i'.jpg/ s/width=[0-9]\+/width='$width'/' \
    -e '/image'$i'.jpg/ s/height=[0-9]\+/height='$height'/' \
    nhsl-part-iii.adoc
done
