#!/bin/bash

docker run -d \
	--hostname rabbit1 \
	-p "4369:4369" \
	-p "5672:5672" \
	-p "15672:15671" \
	-p "25672:25672" \
	-p "35672:35672" \
	-v /root/docker/rabbitmq/persistence/rabbitmq:/var/lib/rabbitmq \
        -v /root/docker/rabbitmq/persistence/rabbitmq/logs:/var/log/rabbitmq \
        -v /root/docker/rabbitmq/persistence/rabbitmq/etc:/etc/rabbitmq \
	--name rabbit1 \
	rabbitmq:3.11-management-alpine
