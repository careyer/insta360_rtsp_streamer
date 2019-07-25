### TestVideoSrc
### =====================================
#encode with libx264 (CPU)
#ffmpeg -re -f lavfi -i testsrc=duration=60:size=1280x720:rate=30 -vf format=yuv420p -f rtsp -c:v libx264 -profile:v baseline -level 3.0 -preset ultrafast -g 3 -muxdelay 0.1 rtsp://localhost:5545/test

#encode with h264_omx (GPU)
#ffmpeg -re -f lavfi -i testsrc=duration=60:size=1280x720:rate=30 -vf format=yuv420p -f rtsp -vcodec h264_omx -b:v 4000000 -zerocopy 1 -g 3 -profile high -muxdelay 0.1 rtsp://localhost:5545/test



### Insta360 Air
### ======================================
#transcode with h264_omx (GPU)
ffmpeg -r 30 -copytb -1 -f v4l2 -vcodec h264 -i /dev/video2 -f rtsp  -vcodec h264_omx -b:v 4000000 -zerocopy 1 -g 3 -profile high -muxdelay 0.1 rtsp://localhost:5545/test

#transcode with libx264 encoder (CPU)
#ffmpeg -r 30 -copytb -1 -f v4l2 -vcodec h264 -i /dev/video2 -f rtsp  -vcodec libx264 -profile:v baseline -level 3.0 -preset ultrafast -g 3 -muxdelay 0.1 rtsp://localhost:5545/test

#forward raw h264 camera stream 
#ffmpeg -r 30 -copytb 0 -f v4l2 -vcodec h264 -i /dev/video2 -f rtsp  -vcodec copy -g 3 -muxdelay 0.1 rtsp://localhost:5545/test




### Logitech c270 USB-Webcam
### ======================================
#ffmpeg -r 30 -copytb 0 -f v4l2 -i /dev/video0 -f rtsp  -vcodec h264_omx -b:v 6000000 -preset ultrafast -g 3 -muxdelay 0.1 rtsp://localhost:5545/test




