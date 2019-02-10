cd ffmpeg

echo "$PATH"
if [ ${OSTYPE//[0-9.-]*/} == "msys" ]; then
    mingw64_shell.bat
fi

# Line breaks represent breaks between sections in ./configure.
CONFIGURE_ARGS="\
--disable-static --enable-shared \
--disable-programs \
--disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages \
--disable-avdevice --disable-swresample --disable-swscale --disable-postproc --disable-avfilter"

./configure $CONFIGURE_ARGS
make
