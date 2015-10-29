#!/bin/bash

filename=${1%.img}
basename=${filename%.html}

if [ ! -f $filename ]; then
	echo "usage: $0 filname.html.img"
	exit 1
fi

count=0

for i in `cat $1`; do

  n=$(printf "%02d" $count)
  fn=$basename-$n.jpg

	echo $fn
	echo $i

  sed -i "s/$i/$fn/g" $filename
  count=$(($count+1))
done
