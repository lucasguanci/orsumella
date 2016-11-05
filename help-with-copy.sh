#!/bin/sh

for i in orsumella*-en.php; do
  filename=$(echo $i | cut -f 1 -d '-en.')
  cp $i $filename-de.php
done;
