#ffmpeg -f lavfi -i testsrc=duration=30:size=1280x720:rate=30 testsrc.mpg
ffmpeg -re -f lavfi -i testsrc=duration=60:size=1280x720:rate=60 -vf format=yuv420p  -c:v libx264 -profile:v baseline -level 3.0 -preset fast -g 3 testsrc.mp4
