# https://stackoverflow.com/questions/63553906/merging-multiple-video-files-with-ffmpeg-and-xfade-filter
# a = [27.022000, 42.022000, 13.022000, 39.022000, 13.022000, 36.022000, 30.022000, 18.022000, 20.022000, 23.022000, 36.022000, 37.022000, 47.022000]
# [sum(a[0:i+1])-1*(i+1) for i in range(0, 13)] # for offset
# [round((sum(a[0:i+1])-1*(i+1)+2, 3), round(sum(a[0:i+1])-1*(i+1)+5, 3)) for i in range(0, 13)] # for subtitles
# fix sync: 322.26 becomes 322.06; and pro rata
ffmpeg -i out01.mp4 -i out02.mp4 -i out04.mp4 -i out06.mp4 -i out07.mp4 -i out08.mp4 -i out09.mp4 -i out10.mp4 -i out11.mp4 -i out15.mp4 -i out16.mp4 -i out17.mp4 -i out18.mp4 -filter_complex \
"[0][1]xfade=transition=fade:duration=1.0:offset=26.02[V01]; \
[V01][2]xfade=transition=fade:duration=1.0:offset=67.00[V02]; \
[V02][3]xfade=transition=fade:duration=1.0:offset=79.02[V03]; \
[V03][4]xfade=transition=fade:duration=1.0:offset=117.02[V04]; \
[V04][5]xfade=transition=fade:duration=1.0:offset=129.03[V05]; \
[V05][6]xfade=transition=fade:duration=1.0:offset=164.03[V06]; \
[V06][7]xfade=transition=fade:duration=1.0:offset=193.03[V07]; \
[V07][8]xfade=transition=fade:duration=1.0:offset=210.05[V08]; \
[V08][9]xfade=transition=fade:duration=1.0:offset=229.06[V09]; \
[V09][10]xfade=transition=fade:duration=1.0:offset=251.06[V10]; \
[V10][11]xfade=transition=fade:duration=1.0:offset=286.06[V11]; \
[V11][12]xfade=transition=fade:duration=1.0:offset=322.06,format=yuv420p[video]; \
 [0:a][1:a]acrossfade=d=1.0:c1=tri:c2=tri[A01]; \
 [A01][2:a]acrossfade=d=1.0:c1=tri:c2=tri[A02]; \
 [A02][3:a]acrossfade=d=1.0:c1=tri:c2=tri[A03]; \
 [A03][4:a]acrossfade=d=1.0:c1=tri:c2=tri[A04]; \
 [A04][5:a]acrossfade=d=1.0:c1=tri:c2=tri[A05]; \
 [A05][6:a]acrossfade=d=1.0:c1=tri:c2=tri[A06]; \
 [A06][7:a]acrossfade=d=1.0:c1=tri:c2=tri[A07]; \
 [A07][8:a]acrossfade=d=1.0:c1=tri:c2=tri[A08]; \
 [A08][9:a]acrossfade=d=1.0:c1=tri:c2=tri[A09]; \
 [A09][10:a]acrossfade=d=1.0:c1=tri:c2=tri[A10]; \
 [A10][11:a]acrossfade=d=1.0:c1=tri:c2=tri[A11]; \
 [A11][12:a]acrossfade=d=1.0:c1=tri:c2=tri[audio]" \
-map "[video]" -map "[audio]" -movflags +faststart concat-fixed-sync.mp4

# out01.mp4 愛是永恒
# out02.mp4 分手總要在雨天
# out04.mp4 餓狼傳說
# out06.mp4 相思風雨中
# out07.mp4 只願一生愛一人
# out08.mp4 每天愛你多一些
# out09.mp4 還是覺得你最好
# out10.mp4 遙遠的她
# out11.mp4 只想一生跟你走
# out15.mp4 這麼近那麼遠
# out16.mp4 你的名字我的姓氏
# out17.mp4 怎麼捨得你
# out18.mp4 情已逝

