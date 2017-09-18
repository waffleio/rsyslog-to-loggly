#!/bin/sh

exec="/usr/sbin/rsyslogd"
prog=$(basename $exec)
config="/etc/rsyslog.conf"

echo "Creating config file..."

cat << EOF >> ${config}
template(name="LogglyFormat" type="string" string="<%pri%>%protocol-version% %timestamp:::date-rfc3339% ${HOSTNAME} %app-name% %procid% %msgid% [${LOGGLY_TOKEN}@41058 tag=\"haproxy\" tag=\"${ENVIRONMENT}\"] %msg%\n")

action(type="omfwd" protocol="tcp" target="logs-01.loggly.com" port="514" template="LogglyFormat")

EOF

echo "Starting $prog..."

$exec -n
