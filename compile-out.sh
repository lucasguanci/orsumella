#!/bin/bash
# get "compiled" file
curl http://orsumella.local/index.php > out/index.html
curl http://orsumella.local/index-en.php > out/index-en.html
curl http://orsumella.local/index-de.php > out/index-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-contatti.php > out/orsumella-vini-chianti-classico-contatti.html
curl http://orsumella.local/orsumella-vini-chianti-classico-contatti-en.php > out/orsumella-vini-chianti-classico-contatti-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-orsumella.php > out/orsumella-vini-chianti-classico-orsumella.html
curl http://orsumella.local/orsumella-vini-chianti-classico-orsumella-en.php > out/orsumella-vini-chianti-classico-orsumella-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-corte-rinieri.php > out/orsumella-vini-chianti-classico-corte-rinieri.html
curl http://orsumella.local/orsumella-vini-chianti-classico-corte-rinieri-en.php > out/orsumella-vini-chianti-classico-corte-rinieri-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-rubereto.php > out/orsumella-vini-chianti-classico-rubereto.html
curl http://orsumella.local/orsumella-vini-chianti-classico-rubereto-en.php > out/orsumella-vini-chianti-classico-rubereto-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-news.php > out/orsumella-vini-chianti-classico-news.html
curl http://orsumella.local/orsumella-vini-chianti-classico-news-en.php > out/orsumella-vini-chianti-classico-news-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-la-tenuta.php > out/orsumella-vini-chianti-classico-la-tenuta.html
curl http://orsumella.local/orsumella-vini-chianti-classico-la-tenuta-en.php > out/orsumella-vini-chianti-classico-la-tenuta-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-il-territorio.php > out/orsumella-vini-chianti-classico-il-territorio.html
curl http://orsumella.local/orsumella-vini-chianti-classico-il-territorio-en.php > out/orsumella-vini-chianti-classico-il-territorio-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-olio.php > out/orsumella-vini-chianti-classico-olio.html
curl http://orsumella.local/orsumella-vini-chianti-classico-olio-en.php > out/orsumella-vini-chianti-classico-olio-en.html
curl http://orsumella.local/orsumella-vini-chianti-classico-contatti-de.php > out/orsumella-vini-chianti-classico-contatti-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-corte-rinieri-de.php > out/orsumella-vini-chianti-classico-corte-rinieri-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-il-territorio-de.php > out/orsumella-vini-chianti-classico-il-territorio-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-la-tenuta-de.php > out/orsumella-vini-chianti-classico-la-tenuta-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-news-de.php > out/orsumella-vini-chianti-classico-news-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-olio-de.php > out/orsumella-vini-chianti-classico-olio-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-orsumella-de.php > out/orsumella-vini-chianti-classico-orsumella-de.html
curl http://orsumella.local/orsumella-vini-chianti-classico-rubereto-de.php > out/orsumella-vini-chianti-classico-rubereto-de.html


# change file extension in anchor tags
for i in out/*.html; do
  sed -i ".bak"  "s/\.php/\.html/g" $i
done;
mv out/*.bak out/bck/
lessc css/style.less > css/style.css
cp -r css out/
cp -r img out/
cp -r js out/
