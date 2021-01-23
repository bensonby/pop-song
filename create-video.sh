ffmpeg -i jacky-cheung-part01.mkv part01.wav
ffmpeg -i jacky-cheung-part02.mkv part02.wav
sox part01.wav part01-reverb.wav reverb
sox part02.wav part02-reverb.wav reverb
ffmpeg -i jacky-cheung-part01.mkv -i part01-reverb.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 part01-reverb.mp4
ffmpeg -i jacky-cheung-part02.mkv -i part02-reverb.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 part02-reverb.mp4
