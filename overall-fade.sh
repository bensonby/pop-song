ffmpeg -i result-v01.mp4 -filter:v "fade=in:st=0:d=1, fade=out:st=368.1:d=1" -filter:a "afade=in:st=0:d=1, afade=out:st=368.1:d=1" -c:v libx264 -c:a aac result-v02.mp4
