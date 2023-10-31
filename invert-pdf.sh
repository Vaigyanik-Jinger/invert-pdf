#! /bin/bash

echo "Processing..."
cwd=$pwd
mkdir dark
cp $1.pdf ./dark
cd dark
convert -density 200 -quality 100 $1.pdf output.jpg
echo "Image Files Created..."
mogrify -negate *.jpg
echo "Image Files Inverted..."
convert *.jpg $1-dark.pdf
echo "Dark PDF Created..."
mv $1-dark.pdf ./..
cd ..
rm -r dark
echo "compressing PDF"
convert -density 200x200 -quality 70 $1-dark.pdf $1-dark.pdf
echo "processing OCR..."
ocrmypdf $1-dark.pdf dark-$1-readable.pdf
rm $1-dark.pdf
echo "Process finished!"
cd 
