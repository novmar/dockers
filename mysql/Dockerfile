FROM scratch
ADD rootfs.tar.xz /
RUN apk --update  \
	add mariadb \
	mariadb-client
COPY startup.sh /startup.sh 
CMD ["/startup.sh"]
