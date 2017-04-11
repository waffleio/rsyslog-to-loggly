[![Docker Repository on Quay](https://quay.io/repository/waffleio/rsyslog-to-loggly/status "Docker Repository on Quay")](https://quay.io/repository/waffleio/rsyslog-to-loggly)

# rsyslog-to-loggly
Container to send rsyslog to loggly

## Goal
* To be the sidecar container sitting next to haproxy shipping logs from haproxy
  to loggly

## Requirements
* Environmental Variables:
  * HOSTNAME
  * LOGGLY_TOKEN
