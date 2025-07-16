FROM almalinux:8

LABEL maintainer="Soundarya"

RUN dnf -y update && \
    dnf  -y install httpd && \
    dnf  clean all

copy index.html /var/www/html/

CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]

EXPOSE 80

