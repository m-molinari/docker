
FROM centos:8

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd mod_ssl openssl && \
    yum clean all

EXPOSE 80

ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
