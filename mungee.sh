#!/bin/sh

App=slurpee.jar

mkdir -p munged
touch run.log

echo "building hash table"
rm -f md5.txt
touch md5.txt
for f in `find en -type f -print` ; do 
  md5sum=`md5 -q $f`
  echo "$md5sum $f" >> run.log
  echo $md5sum >> md5.txt
done

echo "munging files"
for f in `find en -type f -print` ; do 
  md5sum=`md5 -q $f`
  out="munged/${md5sum}.html"
  echo "munging: $md5sum" >> run.log
  java -jar $App $f md5.txt "http://localhost.com/" > $out
done

rm -f md5.txt
