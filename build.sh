cd ffmpeg

echo "$PATH"
# Line breaks represent breaks between sections in ./configure.
CONFIGURE_ARGS="\
    --disable-static --enable-shared \
    --disable-programs \
    --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages \
    --disable-avdevice --disable-swresample --disable-swscale --disable-postproc --disable-avfilter"

if [ ${OSTYPE//[0-9.-]*/} == "msys" ]; then
    msystem.bat MINGW64
fi

./configure $CONFIGURE_ARGS
make
