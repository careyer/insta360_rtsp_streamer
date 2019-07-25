#ffmpeg -re -f lavfi -i testsrc=duration=60:size=1280x720:rate=30 -f rtsp -muxdelay 0.1 -rtsp_transport udp rtsp://localhost:5545/test
#ffmpeg -re -f lavfi -i testsrc=duration=60:size=1280x720:rate=30 -f rtsp -c:v libx264 -g 3 -muxdelay 0.1 -rtsp_transport udp rtsp://localhost:5545/test
ffmpeg -re -f lavfi -i testsrc=duration=60:size=1280x720:rate=30 -vf format=yuv420p -f rtsp -c:v libx264 -profile:v baseline -level 3.0 -preset fast -g 3 -muxdelay 0.1 rtsp://localhost:5545/test
