#!/bin/bash


for i in Fase*.dat
do
    nombre=$(echo "$i" | sed 's/.dat//g');
    gracebat -settype xycolor -param parFase.par $i -printfile "$nombre.jpg";
done

convert -delay 3 -loop 0  *.jpg Video.gif
#ffmpeg -i Video.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" Video.mp4
rm -f *.jpg



