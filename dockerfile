FROM alpine

ADD local /usr/local

VOLUME /usr/local/etc/rsy_bak.d /var/log/rsy_bak /root/.ssh

RUN apk add --no-cache --update openssh rsync

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
