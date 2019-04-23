# BashVideoSort
A bash script to sort videos into folders based on their dimensions.

## Why?
A few months ago I realized I had over 550 GB of video in iCloud Photos. After downloading all the videos, I can run this Bash script and easily sort videos by whether they're portrait (Instagram, Snapchat, etc.) or landscape videos.

## The Code
```
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
```
