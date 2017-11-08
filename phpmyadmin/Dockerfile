FROM scratch
ADD rootfs.tar.xz /
RUN apk --update  \
	add php5-mysqli \
	lighttpd \
	php5-cgi \
	php5-json

VOLUME /webapps
VOLUME /aa
COPY startup.sh /startup.sh 
CMD ["/startup.sh"]
