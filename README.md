# About this repo

Simple SMTP server

# Usage in docker-compose

```yaml
smtp:
  image: tehes/docker-smtp
  #ports:
    #- "25:25"
  environment:
    - SMTP_HOSTNAME=smtp.domain.tld
  networks:
    - net
```