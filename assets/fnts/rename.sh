#!/bin/sh

for f in *.woff2
do
  strt=$(echo "$f" | cut -c1-8)
  if [ "$strt" = "PolySans" ]
  then
    rest=$(expr "$f" : '.*-\([^.]*\)')
    mv "$f" "SPSans-${rest}.woff2"
  fi
done
