ffmpeg -i testsrc.mp4 -c copy -bsf:v trace_headers -f null - 2>NALUS.txt

