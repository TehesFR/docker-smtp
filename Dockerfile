FROM alpine:3.6

RUN apk add --update ca-certificates postfix supervisor rsyslog bash && rm -rf /var/cache/apk/*

COPY core/supervisord.conf /etc/supervisord.conf
COPY core/rsyslog.conf /etc/rsyslog.conf
COPY core/entrypoint.sh /usr/local/bin/entrypoint.sh

ENV HOSTNAME = ""
ENV RELAY_SMTP_SERVER = ""
ENV RELAY_SMTP_PORT = ""
ENV RELAY_SMTP_TLS = false
ENV RELAY_SMTP_USERNAME = ""
ENV RELAY_SMTP_PASSWORD = ""
ENV ALLOWED_NETWORKS = ""
ENV ALLOWED_SENDER_DOMAINS = ""

EXPOSE 25 587

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
