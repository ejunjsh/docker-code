FROM ubuntu:14.04

MAINTAINER ejunjsh <sjj050121014@163.com>

WORKDIR /root

RUN apt update && apt install -y mercurial build-essential gawk m4 openjdk-6-jdk libasound2-dev libcups2-dev libxrender-dev xorg-dev xutils-dev binutils libmotif3 libmotif-dev ant zip

RUN hg clone http://hg.openjdk.java.net/jdk7u/jdk7u-dev
RUN cd jdk7u-dev
RUN chmod 755 get_source.sh
RUN ./get_source.sh

CMD [ "bash"]

