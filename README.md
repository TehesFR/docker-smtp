# About this repo

Simple SMTP server

# Usage in docker-compose

```yaml
smtp:
  image: tehes/docker-smtp
  #ports:
    #- "25:25"
    #- "587:587"
  environment:
    - HOSTNAME=smtp.domain.tld
  networks:
    - net
```