docker run -d \
	--hostname rabbit1 \
	-p "4369:4369" \
	-p "5672:5672" \
	-p "15672:15671" \
	-p "25672:25672" \
	-p "35672:35672" \
	-e "RABBITMQ_DEFAULT_USER=CHANGE_USER" \
	-e "RABBITMQ_DEFAULT_PASS=CHANGE_PASS" \
	-e "RABBITMQ_MANAGEMENT_SSL_CERTFILE=/var/lib/rabbitmq/ssl/cert.crt" \
	-e "RABBITMQ_MANAGEMENT_SSL_KEYFILE=/var/lib/rabbitmq/ssl/cert.key" \
	-e "RABBITMQ_USE_LONGNAME=false" \
	-e "RABBITMQ_ERLANG_COOKIE='XFTRSP'" \
	-v /hostpath/rabbitmq:/var/lib/rabbitmq \
	-v /hostpath/logs:/var/log/rabbitmq \
	--name rabbit1 \
	rabbitmq:3.8-management-alpine
