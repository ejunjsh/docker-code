# docker-code
This is a place where i record something about docker.

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

then return a bash where you can run `java` or related command.

# kafka

a image for kafka cluster,

	sudo docker run sjj050121014/kafka:1.0

you pass different environment parameter `broker` `zk` to start up this container, 

# mysql

run

	sudo docker-compose up

then open browser to `http://<host ip>:8080`,login in with `root/example`, you will see the management page of mysql, and test your sql code ,or some test case about mysql.
