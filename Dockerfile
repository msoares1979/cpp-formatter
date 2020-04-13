FROM ubuntu:20.04

ENV TZ :Brazil/East
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt update -y
RUN apt install -y git \
                   g++ cmake ninja-build \
                   gcovr lcov \
                   doxygen graphviz mscgen \
                   llvm-dev libclang-dev \
                   clang clang-format clang-tidy

# Clazy installation
#RUN git clone -b v1.6 https://github.com/KDE/clazy.git /var/tmp/clazy
#RUN cd /var/tmp/clazy; cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release
#RUN make -C /var/tmp/clazy all install
