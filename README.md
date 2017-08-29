# About this repo

Simple SMTP server

# Usage in docker-compose

```yaml
smtp:
  image: tehes/docker-smtp
  ports:
   - "25:25"
  environment:
    GMAIL_USER:
    GMAIL_PASSWORD:
    SES_USER:
    SES_PASSWORD:
    SES_REGION:
    RELAY_NETWORKS:
    RELAY_DOMAINS:
    KEY_PATH:
    CERTIFICATE_PATH:
    MAILNAME:
    ```