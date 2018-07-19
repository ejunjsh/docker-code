FROM sjj050121014/jdk8:1.0

MAINTAINER ejunjsh <sjj050121014@163.com>

# install apache-maven-3.5.4
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz && \
    tar -xzvf apache-maven-3.5.4-bin.tar.gz && \
    mv apache-maven-3.5.4 /usr/local/apache-maven-3.5.4 && \
    rm apache-maven-3.5.4-bin.tar.gz

# set environment variable
ENV PATH=$PATH:/usr/local/apache-maven-3.5.4/bin
