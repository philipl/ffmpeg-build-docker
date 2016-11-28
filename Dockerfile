FROM ubuntu:16.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install software-properties-common apt-utils
# For fdkaac and openh264
RUN add-apt-repository -y ppa:djcj/tools
# For zimg
RUN add-apt-repository -y ppa:djcj/vapoursynth
RUN apt-get update
RUN apt-get -y install \
    yasm git \
    libx264-dev libx265-dev libvpx-dev libvorbis-dev libtheora-dev libspeex-dev \
    libopencore-amrwb-dev libopencore-amrnb-dev libmp3lame-dev libopenjpeg-dev \
    libvo-amrwbenc-dev nvidia-cuda-dev libopus-dev libssl-dev libass-dev \
    libcaca-dev libbluray-dev libcdio-cdda-dev libdc1394-22-dev flite1-dev \
    libfontconfig-dev libfreetype6-dev libfribidi-dev libgme-dev \
    libiec61883-dev libmodplug-dev libopencv-dev libpulse-dev librubberband-dev \
    librtmp-dev libshine-dev libsmbclient-dev libsnappy-dev libsoxr-dev \
    libssh-dev libtesseract-dev libtwolame-dev libv4l-dev libwavpack-dev \
    libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev libxcb-shape0-dev \
    libxvidcore-dev libopenal-dev nvidia-opencl-dev libcdio-paranoia-dev \
    libgcrypt20-dev libomxil-bellagio-dev libnetcdf-dev libzvbi-dev libczmq-dev \
    libwebp-dev libschroedinger-dev libgsm1-dev libbs2b-dev ladspa-sdk \
    frei0r-plugins-dev libchromaprint-dev libleptonica-dev libavc1394-dev \
    libcrystalhd-dev libva-dev \
    libfdk-aac-dev libopenh264-dev \
    libzimg-dev

