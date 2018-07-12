FROM ubuntu:14.04

MAINTAINER ejunjsh <sjj050121014@163.com>

WORKDIR /root

RUN apt-get update && apt-get install -y openssh-server wget vim

COPY ./jdk-6u23-linux-x64.bin . 

RUN chmod a+x jdk-6u23-linux-x64.bin

RUN ./jdk-6u23-linux-x64.bin

RUN rm -f jdk-6u23-linux-x64.bin

RUN mv jdk1.6.0_23 /usr/local/

ENV JAVA_HOME /usr/local/jdk1.6.0_23
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JRE_HOME/lib
ENV PATH $PATH:$JAVA_HOME/bin

CMD [ "bash"]

