FROM ubuntu:14.04

MAINTAINER ejunjsh <sjj050121014@163.com>

WORKDIR /root

RUN apt update && apt install -y git build-essential gawk m4 openjdk-6-jdk libasound2-dev libcups2-dev libxrender-dev xorg-dev xutils-dev binutils libmotif3 libmotif-dev ant zip

RUN git clone https://github.com/ejunjsh/jdk7-source-code.git
WORKDIR /root/jdk7-source-code
COPY ./make.sh .
RUN sh make.sh

CMD [ "bash"]

