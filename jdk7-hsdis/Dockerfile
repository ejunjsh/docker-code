FROM sjj050121014/jdk7:1.0

MAINTAINER ejunjsh <sjj050121014@163.com>

RUN apt update

RUN apt install -y git

RUN git clone https://github.com/drazzib/openjdk-hsdis.git 

WORKDIR openjdk-hsdis

RUN apt-get install -y build-essential devscripts equivs

RUN apt install -y binutils-source libintl-perl libtext-unidecode-perl libxml-libxml-perl  libxml-namespacesupport-perl libxml-sax-base-perl libxml-sax-perl texinfo zlib1g-dev perl perl-base perl-modules

RUN mk-build-deps -i -r

RUN debuild -b -uc -us

RUN debi --with-depends

RUN apt-get -y --purge remove openjdk-hsdis-build-deps

WORKDIR /root

RUN rm -rf openjdk-hsdis






