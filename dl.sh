#!/bin/bash
if [ $# -eq 2 ] ; then
	modified=`echo "$1" | sed 's/-//g'`
	echo "Starting Downloading $1 episode $2"
	echo "Save output as ${modified}_${2}.mkv"
	#if you only have cURL
	#curl --user-agent "Mozilla/5.0 (X11; Linux x86_64; rv:17.0) Gecko/17.0 Firefox/17.0" --referer "http://www.animeftw.tv/anime/$1/" "http://videos.animeftw.tv/${modified}/${modified}_${2}_ns.mkv" -o ${modified}_${2}.mkv
	#if you have aria2
	aria2c --referer="http://www.animeftw.tv/anime/$1/" --user-agent="Mozilla/5.0 (X11; Linux x86_64; rv:17.0) Gecko/17.0 Firefox/17.0" http://videos.animeftw.tv/${modified}/${modified}_${2}_ns.mkv -x 10 -m 0 -o ${modified}_${2}.mkv
else
	echo "usage: $0 nameofanim episodenumber"
fi


