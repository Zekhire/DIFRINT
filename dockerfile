# FROM nvidia/cuda:9.0-devel-ubuntu16.04
# FROM nvidia/cuda:9.0-cudnn7-devel
FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
# FROM gcc:5.3
# FROM python:3.6.15-slim-buster
# FROM ubuntu:18.04

# COPY --from=0 /usr/local/cuda-9.0/targets/x86_64-linux/include/thrust/system/cuda /usr/local/cuda-9.0/targets/x86_64-linux/include/thrust/system/cuda
# COPY --from=0 /usr/local/cuda /usr/local/cuda
# /usr/local/nvidia/bin
# /usr/local/cuda/bin

# COPY --from=1 /usr/share/doc/g++ /usr/share/doc/g++
# COPY --from=1 /usr/local/bin/g++ /usr/local/bin/g++
# COPY --from=1 /usr/share/doc/gcc-4.9-base/gcc /usr/share/doc/gcc-4.9-base/gcc
# COPY --from=1 /usr/share/doc/gcc /usr/share/doc/gcc
# COPY --from=1 /usr/local/lib/gcc /usr/local/lib/gcc
# COPY --from=1 /usr/local/bin/gcc /usr/local/bin/gcc
# COPY --from=1 /usr/local/libexec/gcc /usr/local/libexec/gcc
# COPY --from=1 /usr/lib/gcc /usr/lib/gcc
# COPY --from=1 /usr/src/gcc /usr/src/gcc
# COPY --from=1 /usr/src/gcc/gcc /usr/src/gcc/gcc

RUN apt update

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python3.6
RUN apt-get install -y python3-pip


RUN python3 -m pip install torch==1.0.0
RUN python3 -m pip install -U numpy
RUN python3 -m pip install --pre cupy-cuda110
RUN python3 -m pip install pillow==5.2.0 numpy==1.15.2 matplotlib==3.0.0 pypng==0.0.20 opencv-contrib-python==4.1.0.25
RUN python3 -m pip install torchvision==0.2.1
RUN python3 -m pip install cupy==4.1.0 --no-cache-dir -vvvv



# # RUN apt install gcc -y
# RUN apt install g++-4 -y
# # RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4 10
# # RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 10

# # RUN apt-get install build-essential -y6
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
# RUN apt-get update
# RUN apt-get install gcc-5 g++-5
# RUN update-alternatives 
# RUN update-alternatives --remove-all gcc
# RUN update-alternatives --remove-all g++
# RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 20
# RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 20
# RUN update-alternatives --config gcc
# RUN update-alternatives --config g++

# # RUN add-apt-repository ppa:deadsnakes/ppa
# # RUN apt-get update
# # RUN apt-get install python3.5 -y
# # RUN apt-get install python3-pip -y

# # RUN python3.5 -m pip install torch==1.0.0
# # COPY requirements.txt ./
# # RUN pip install -r requirements.txt
# # RUN apt-get install build-essential checkinstall -y
# # RUN apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y

# # RUN cd /opt
# # RUN wget https://www.python.org/ftp/python/3.5.6/Python-3.5.6.tgz

# # RUN tar xzf Python-3.5.6.tgz