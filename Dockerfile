FROM alpine

EXPOSE 514

RUN set -x \
  && apk add --update-cache --no-cache rsyslog \
  && mkdir -v /var/spool/rsyslog

ADD rsyslog.conf /etc/rsyslog.conf
ADD start.sh /bin/start

CMD ["start"]
