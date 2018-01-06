#!/bin/bash

export USERHOME=/home/mcollavo

#for line in `cat copy-files.list` ; do
while read line ; do
	if [ "$line" == "" ] ; then
		continue
	fi

	source=`echo $line | awk '{ print $1 }'`
	if [ "$source" == "${source#/}" ] ; then
		source=${USERHOME}/${source}
	fi

	target=$(echo $line | awk '{ print $2 }')
	target=git/mining-eth-linux/$target
	if [ "$target" == "${target#/}" ] ; then
		target=${USERHOME}/${target}
	fi

	echo ""
	echo cp $source $target
	mkdir -p $target
	cp $source $target

done < copy-files.list


