#!/bin/bash
# input argument is file name (without extension)
fullfile = $1
filename=$(basename "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"

# get "compiled" file
curl http://orsumella.local/$filename.php > out/$filename.html

# change file extension in anchor tags
sed -i ".bak"  "s/\.php/\.html/g" out/$filename.html

lessc css/style.less > css/style.css
cp css/style.css out/css/
