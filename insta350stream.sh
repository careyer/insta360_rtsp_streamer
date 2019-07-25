#ffmpeg -r 30 -copytb 0 -f v4l2 -vcodec h264 -i /dev/video0 -vcodec h264_omx -b:v 6000000 ffmpeg_omx.mp4
#ffmpeg -re -f lavfi -i testsrc=duration=60:size=1280x720:rate=30 -vf format=yuv420p -f rtsp -c:v libx264 -profile:v baseline -level 3.0 -preset fast -g 3 -muxdelay 0.1 rtsp://localhost:5545/test

### Insta360 Air
#transcode with h264_omx
ffmpeg -r 30 -copytb -1 -f v4l2 -vcodec h264 -i /dev/video2 -f rtsp  -vcodec h264_omx -b:v 4000000 -g 3 -preset ultrafast -muxdelay 0.1 rtsp://localhost:5545/test
#forward raw camera stream 
#ffmpeg -r 30 -copytb 0 -f v4l2 -vcodec h264 -i /dev/video2 -f rtsp  -vcodec copy -g 3 -muxdelay 0.1 rtsp://localhost:5545/test

### Logitech c270 USB-Webcam
#ffmpeg -r 30 -copytb 0 -f v4l2 -i /dev/video0 -f rtsp  -vcodec h264_omx -b:v 6000000 -preset ultrafast -g 3 -muxdelay 0.1 rtsp://localhost:5545/test




