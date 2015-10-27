#!/bin/bash

filename=${1%.img}
basename=${filename%.html}


count=0

for i in `cat $1`; do

  n=$(printf "%02d" $count)
  fn=$basename-$n.jpg
  count=$(($count+1))
  echo git mv bilder/$basename/$i bilder/$basename/$fn

done
