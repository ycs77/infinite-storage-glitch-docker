FROM rust:1.69

LABEL maintainer="Lucas Yang"

ENV OPENCV_INCLUDE_PATHS="/usr/include/,/usr/include/opencv4"

RUN set -xe && \
    apt update && \
    apt upgrade -y && \
    apt install -y \
        libopencv-dev \
        build-essential \
        libssl-dev \
        clang \
        libclang-dev \
        git \
        ffmpeg

RUN git clone https://github.com/ycs77/Infinite-Storage-Glitch.git

WORKDIR /Infinite-Storage-Glitch

RUN cargo build --release

RUN chmod +x target/release/isg_4real && \
    ln -s /Infinite-Storage-Glitch/target/release/isg_4real /usr/local/bin/isg_4real

WORKDIR /resource

CMD ["isg_4real"]
