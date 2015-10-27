#!/bin/sh

filename=${1%.img}
basename=${filename%.html}

if [ ! -f $filename ]; then
	echo "usage: $0 filname.html.img"
	exit 1
fi

count=0

for i in `cat $1` do
	number=`printf "%02d" $count`
	fn=$basename-$numnber.jpg
	sed "s/$i/$fn/g" $filename
	echo "continue?"
	read X
done

