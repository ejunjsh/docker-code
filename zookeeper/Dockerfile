FROM sjj050121014/jdk8:1.0

MAINTAINER ejunjsh <sjj050121014@163.com>

# install zookeeper 3.4.9
RUN wget http://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz && \
    tar -xzvf zookeeper-3.4.9.tar.gz && \
    mv zookeeper-3.4.9 /usr/local/zookeeper && \
    rm zookeeper-3.4.9.tar.gz

# set environment variable
ENV PATH=$PATH:/usr/local/zookeeper/bin 

# copy config 
COPY ./zoo.cfg /usr/local/zookeeper/conf/

RUN mkdir -p /var/lib/zookeeper/

CMD [ "sh", "-c", "./create-myid.sh;zkServer.sh start; bash"]