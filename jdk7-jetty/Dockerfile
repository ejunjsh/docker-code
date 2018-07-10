FROM sjj050121014/jdk7:1.0

MAINTAINER ejunjsh <sjj050121014@163.com>

RUN wget https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.9.v20150224/jetty-distribution-9.2.9.v20150224.tar.gz

RUN tar -xvf jetty-distribution-9.2.9.v20150224.tar.gz -C /opt

RUN mv /opt/jetty-distribution-9.2.9.v20150224 /opt/jetty

RUN rm -rf jetty-distribution-9.2.9.v20150224.tar.gz

ENV ENV JETTY_HOME /opt/jetty/

