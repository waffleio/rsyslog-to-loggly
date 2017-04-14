FROM alpine

EXPOSE 514

RUN set -x \
  && apk add --update-cache --no-cache rsyslog

ADD rsyslog.conf /etc/rsyslog.conf

CMD ["rsyslogd", "-n"]
