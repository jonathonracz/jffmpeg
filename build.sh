cd ffmpeg

# Line breaks represent breaks between sections in ./configure.
./configure \
    --disable-static --enable-shared \
    --disable-programs \
    --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages \

make