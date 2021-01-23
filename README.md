# Instructions for making pop song videos with captions

# Tools

1. OSS studio, with:
   - video source from iPhone (connected via USB), using TrueVisage app for clear camera
   - audio source from Scarlett audio interface
   - with compressor and reverb applied to the audio
   - with video-audio latency configured correctly
2. ffmpeg
   - with sox: add extra reverb or other extra effects `create-video.sh`
   - to extract parts from the video `extract-video.sh`
   - to cross fade video and audio `concat-video.sh`
   - to add captions to the video: `ffmpeg -i raw.mp4 -vf subtitles=subtitles.ass -c:a copy with-captions.mp4`
   - timestamps for cross fade and subtitles are generated with help of `extract-duration.sh` and `get-subtitles.ass.py`
   - to add starting and ending fades to overall video `overall-fade.sh`
3. Fonts
   - Google's Noto Sans font is used for the captions
