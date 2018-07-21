FROM sjj050121014/jdk8:1.0

MAINTAINER ejunjsh <sjj050121014@163.com>

RUN apt-get update && apt-get install -y scala=2.11.6-6


RUN wget http://mirror.bit.edu.cn/apache/kafka/1.1.0/kafka_2.11-1.1.0.tgz && \
    tar -xzvf kafka_2.11-1.1.0.tgz && \
    mv kafka_2.11-1.1.0 /usr/local/kafka && \
    rm kafka_2.11-1.1.0.tgz

# set environment variable
ENV PATH=$PATH:/usr/local/kafka/bin 

# copy config 
COPY ./server.properties.sh /root/

RUN chmod a+x ./server.properties.sh

RUN mkdir -p /var/lib/kafka/


CMD [ "sh", "-c", "./server.properties.sh;kafka-server-start.sh /usr/local/kafka/config/server.properties"]