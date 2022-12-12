FROM sony11/myimage
COPY website /var/www/html/

RUN apt update && \
    apt install -y git

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
