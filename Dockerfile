FROM       ubuntu:24.04
MAINTAINER john.else@gmail.com

RUN     apt-get update
RUN     apt-get -y install \
            cmake \
            git \
            make

RUN     apt-get -y install \
            gcc \
            g++ \
            pkg-config

RUN     apt-get -y install \
            libcairo2-dev \
            libfontconfig1-dev \
            libfreetype-dev \
            libgtkmm-3.0-dev \
            libpango1.0-dev \
            libsqlite3-dev \
            libstdc++6 \
            libx11-dev \
            libx11-xcb-dev \
            libxcb-cursor-dev \
            libxcb-xkb-dev \
            libxcb-keysyms1-dev \
            libxcb-util-dev \
            libxkbcommon-dev \
            libxkbcommon-x11-dev

RUN     useradd dev
RUN     mkdir /home/dev
RUN     chown dev:dev /home/dev
WORKDIR /home/dev

CMD     ["/bin/bash"]
