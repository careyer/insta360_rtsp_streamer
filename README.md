# insta360_rtsp_streamer
This is work in progress for:<br>
<ol>
<li>re-shaping/transcoding the videostream from a Insta360<br>
<li>provide it via a RTSP-Server so that it can be viewed with common video/streaming players<br>
</ol>

This is a short documentation on the nessesary Setup-Steps:

<b>#Stage-1: Install Mischa Spiegelmock's RTSP-server</b>
```
###reference: https://github.com/revmischa/rtsp-server
###Install debian jessie dependences:
sudo apt-get install libmoose-perl liburi-perl libmoosex-getopt-perl libsocket6-perl libanyevent-perl
sudo cpan AnyEvent::MPRPC::Client
###Clone from git
cd ~
git clone https://github.com/revmischa/rtsp-server
###Then make, test and install
cd rtsp-server
perl Makefile.PL
make
make test
sudo make install
###Simply fire up the included rtsp-server.pl application and it will listen for clients on port 554 (standard RTSP port), and source streams on port 5545.
sudo ./rtsp-server.pl
```

<b>#Stage-2: Install ffmpeg</b>
```
sudo apt-get install ffmpeg
###run example ffmpeg pipelines provided in scripts
###reference: https://www.bogotobogo.com/FFMpeg/ffmpeg_video_test_patterns_src.php
###         : https://ffmpeg.org/ffmpeg.html
###         : https://ffmpeg.org/ffmpeg-protocols.html
./gen_test_file.sh
./gen_test_src.sh
```

<b>#Stage-3: Install gstreamer1.0</b>
```
###because generic install 'sudo apt-get install gstreamer1.0' does not work install packages seperatly
sudo apt install gstreamer1.0-nice 
sudo apt install gstreamer1.0-om*
sudo apt install gstreamer1.0-opencv 
sudo apt install gstreamer1.0-packagekit 
sudo apt install gstreamer1.0-plugi*
sudo apt install gstreamer1.0-pocketsphinx 
sudo apt install gstreamer1.0-pulseaudio 
sudo apt install gstreamer1.0-qt5 
sudo apt install gstreamer1.0-rts*
sudo apt install gstreamer1.0-tools 
sudo apt install gstreamer1.0-vaa*
sudo apt install gstreamer1.0-x 
sudo apt install gstreamer1.0-alsa 
sudo apt install gstreamer1.0-c*
sudo apt install gstreamer1.0-doc 
sudo apt install gstreamer1.0-espeak 
sudo apt install gstreamer1.0-fluendo-mp3 
sudo apt install gstreamer1.0-g*
sudo apt install gstreamer1.0-l*
```

<b>#Stage-4: Install QGroundControl</b>
```
###reference: https://docs.qgroundcontrol.com/en/getting_started/download_and_install.html#ubuntu-linuxhttps://docs.qgroundcontrol.com/en/getting_started/download_and_install.html#ubuntu-linux
sudo usermod -a -G dialout $USER
sudo apt-get remove modemmanager -y
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav -y
###Logout and login again to enable the change to user permissions.
###Download QGroundControl.AppImage.
cd ~
mkdir QGroundControl
cd QGroundControl
wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
###Install (and run) using the terminal commands:
chmod +x ./QGroundControl.AppImage
./QGroundControl.AppImage 
###Setup video streaming: 
###Video Source: RTSP Video Stream
###RTSP URL    : rtsp://localhost/test 
```
