#!/bin/bash

if [ "$1" != "" ] ; then
	cd $1
fi

for dir in `ls -1` ; do
	if [ -d $dir ] ; then
		cd $dir
		pwd
		git pull
		git checkout
		cd ..
	fi
done
