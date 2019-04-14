#!/bin/bash
shopt -s nullglob

for f in *.{mp4,MP4,mov,MOV,m4v,M4V}
	do 
		height=`mdls -raw -name  kMDItemPixelHeight "$f"`
		width=`mdls -raw -name  kMDItemPixelWidth "$f"`
		folder=`mkdir -p "$height"x"$width"`
		mv "$f" "$height"x"$width"
		
		printf "File: $f\n"		
		printf "> Dimensions: $height x $width \n\n"
	done

printf "All done! \n"