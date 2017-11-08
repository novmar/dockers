FROM scratch
ADD rootfs.tar.xz /
ADD webapps/ /webapps
RUN apk --update  \
	add php5-mysqli \
	lighttpd \
	php5-cgi \
	php5-json

COPY startup.sh /startup.sh 
CMD ["/startup.sh"]
