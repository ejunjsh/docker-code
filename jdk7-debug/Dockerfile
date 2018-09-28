FROM ubuntu:14.04

MAINTAINER ejunjsh <sjj050121014@163.com>

WORKDIR /root

RUN apt update && apt install -y wget build-essential gawk m4 openjdk-6-jdk libasound2-dev libcups2-dev libxrender-dev xorg-dev xutils-dev binutils libmotif3 libmotif-dev ant zip

RUN wget https://github.com/ejunjsh/jdk7-source-code/archive/jdk7.tar.gz
RUN tar -xvf jdk7.tar.gz
WORKDIR /root/jdk7-source-code-jdk7
COPY ./make.sh .
RUN sh make.sh
RUN apt remove -y wget build-essential gawk m4 openjdk-6-jdk libasound2-dev libcups2-dev libxrender-dev xorg-dev xutils-dev binutils libmotif3 libmotif-dev ant zip
RUN apt-get -y autoremove

ENV PATH=$PATH:/home/openjdk/jdk7u-dev/build-debug/bin
ENV JAVA_HOME=/home/openjdk/jdk7u-dev/build-debug/

RUN rm -rf /home/openjdk/jdk7u-dev/build
WORKDIR /root/
RUN rm -rf /root/jdk7-source-code-jdk7
RUN rm jdk7.tar.gz

CMD [ "bash"]

