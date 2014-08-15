#!/usr/bin/sh

echo "refresing image files"
cp ../images-augmented/*.png images/
echo "zipping into an epub"
7za a -tzip EclecticFirst-Reader-New-Augmented.epub @filestopack.txt
echo "creating azw3 file for kindle"
ebook-convert EclecticFirst-Reader-New-Augmented.epub EclecticFirst-Reader-New-Augmented.azw3
echo "creating mobi file"
ebook-convert EclecticFirst-Reader-New-Augmented.epub EclecticFirst-Reader-New-Augmented.mobi

