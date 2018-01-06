#!/bin/bash
if [ "$1" != "" ] ; then
	cd $1
fi

for dir in `ls -1` ; do
	if [ -d $dir ] ; then
		cd $dir
		if [ -f .git/config ] ; then
			echo "clone $(cat .git/config | grep url | awk '{ print $3 }')"
		fi
		cd ..
	fi
done
