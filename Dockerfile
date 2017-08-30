FROM alpine:3.6

RUN apk --no-cache add postfix rsyslog supervisor bash
COPY entrypoint postfix /
COPY supervisor.d /etc/supervisor.d

EXPOSE 25

CMD ["/entrypoint"]
