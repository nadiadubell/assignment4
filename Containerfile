FROM fedora:latest
RUN sudo dnf upgrade -yqq && \
    sudo dnf install -yqq tuxpaint vim httpd
ADD myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
