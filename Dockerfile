FROM alpine:3.6

RUN apk --no-cache add postfix rsyslog supervisor bash
COPY entrypoint postfix /
COPY supervisor.d /etc/supervisor.d
RUN chmod 777 /entrypoint && chmod +x /entrypoint
RUN chmod 777 /postfix && chmod +x /postfix

EXPOSE 25

CMD ["/entrypoint"]
