#!/bin/sh

# If the download doesn't work, the release link may have changed.
# Check http://johnvansickle.com/ffmpeg/, copy the address of the
# latest release, and replace in the shell script.

# CHANGE THIS TO THE APPROPRIATE FILENAME
FNAME=ffmpeg-release-32bit-static.tar.xz

echo "Creating ~/bin directory if it doesn't exist..."
mkdir -p ~/bin

echo "Removing old versions of ffmpeg..."
rm -rf ~/bin/ffmpeg*

echo "Downloading ffmpeg..."
wget -P ~/bin http://yeakong.com/ffmpeg/releases/$FNAME

echo "Unpacking..."
tar -xf ~/bin/$FNAME -C ~/bin

echo "Cleaning up..."
rm ~/bin/$FNAME
mv /home/root/bin/ffmpeg*/ /home/root/bin/ffmpeg