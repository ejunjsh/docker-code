#!/bin/bash

echo "

num.network.threads=3

num.io.threads=8

socket.send.buffer.bytes=102400

socket.receive.buffer.bytes=102400

socket.request.max.bytes=104857600

log.dirs=/var/lib/kafka/

num.partitions=1

num.recovery.threads.per.data.dir=1

log.retention.hours=168

log.segment.bytes=1073741824

log.retention.check.interval.ms=300000

zookeeper.connect=${zk}

zookeeper.connection.timeout.ms=6000

broker.id=${broker}" > /usr/local/kafka/config/server.properties
