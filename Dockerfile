FROM rust:1.67

RUN set -xe && \
    apt update && \
    apt upgrade -y && \
    apt install -y libopencv-dev build-essential libssl-dev clang libclang-dev git ffmpeg && \
    export OPENCV_INCLUDE_PATHS="/usr/include/,/usr/include/opencv4" && \
    git clone https://github.com/ycs77/Infinite-Storage-Glitch.git && \
    cd Infinite-Storage-Glitch && \
    cargo build --release && \
    chmod +x target/release/isg_4real && \
    ln -s /Infinite-Storage-Glitch/target/release/isg_4real /usr/local/bin/isg_4real
