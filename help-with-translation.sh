#!/bin/sh

for i in orsumella*-de.php; do
  filename=$(echo $i | cut -f 1 -d '.')
  sed -i ".bak" "s/-en/-de/g" $i
  mv $filename.php.bak bak/
done;
