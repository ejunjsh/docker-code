<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents** 

- [how to delete no need images and container?](#how-to-delete-no-need-images-and-container)
- [monitor the stats of containers](#monitor-the-stats-of-containers)
- [entrypoint-test](#entrypoint-test)
- [jdk6](#jdk6)
- [jdk6-u23](#jdk6-u23)
- [jdk7](#jdk7)
- [jdk7-jetty](#jdk7-jetty)
- [jdk7-hsdis](#jdk7-hsdis)
- [jdk8](#jdk8)
- [jdk8-mvn](#jdk8-mvn)
- [kafka](#kafka)
- [mysql](#mysql)
- [zookeeper](#zookeeper)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# how to delete no need images and container?

	sudo docker container prune
	sudo docker image prune	

# monitor the stats of containers

	sudo docker stats

# entrypoint-test

test entrypoint command in Dockerfile

	sudo docker run sjj050121014/entrypoint-test:1.0 "hello world"
	hello world

# jdk6

a image for jdk6,

	sudo docker run sjj050121014/jdk6:1.0

then return a bash where you can run `java` or related command.

# jdk6-u23

a image for jdk6 u23,

	sudo docker run sjj050121014/jdk6-u23:1.0

then return a bash where you can run `java` or related command.

# jdk7

a image for jdk7,

	sudo docker run sjj050121014/jdk7:1.0

then return a bash where you can run `java` or related command.

# jdk7-jetty

a image include jdk7 and jetty envirnment,

	sudo docker run sjj050121014/jdk7-jetty:1.0

then return a bash where you can run `java` or related command.

# jdk7-hsdis

a image include jdk7 and hsdis envirnment,

	sudo docker run sjj050121014/jdk7-hsdis:1.0

then return a bash where you can run `java` or related command.

# jdk8

a image for jdk8,

	sudo docker run sjj050121014/jdk8:1.0

then return a bash where you can run `java` or related command.

# jdk8-mvn

a image include jdk8 and maven,

	sudo docker run sjj050121014/jdk8-mvn:1.0

then return a bash where you can run `java` or `mvn` command.

# kafka

a image for kafka cluster,

	sudo docker run sjj050121014/kafka:1.0

it supports below enviroment parameters:
* `broker` : unique id in the cluster
* `zk` : zookeeper address or hostname.

# mysql

run

	sudo docker-compose up

then open browser to `http://<host ip>:8080`,login in with `root/example`, you will see the management page of mysql, and test your sql code ,or some test case about mysql.


# zookeeper

a image for zookeeper

	sudo docker run sjj050121014/zookeeper:1.0