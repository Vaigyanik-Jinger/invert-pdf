#! /bin/bash

echo "Processing..."
cwd=$pwd
mkdir dark
cp $1.pdf ./dark
cd dark
convert -density 400 -quality 100 $1.pdf tmp.jpg
echo "PNG Files Created..."
mogrify -negate *.jpg
echo "PNG Files Inverted..."
convert *.jpg $1-dark.pdf
echo "Dark PDF Created..."
mv $1-dark.pdf ./..
cd ..
rm -r dark
echo 'comprssing pdf...'
convert -density 200x200 -quality 60 -compress jpeg $1-dark.pdf $1-dark.pdf
echo "processing OCR..."
ocrmypdf $1-dark.pdf dark-$1-readable.pdf
rm $1-dark.pdf
echo "Process finished!"
cd 
