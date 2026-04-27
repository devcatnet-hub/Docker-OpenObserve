FROM deathwalker66/alpine

LABEL Maintainer="CatDEV <dev.catnet@gmail.com>"

### COPY
COPY ./PRC/profile /etc/profile
COPY SCP /SCP

### [ RUN ]
### [!]: Replace \ + && with ;\
RUN set -eux ;\  
### Install OpenObserve  
    mkdir -p /APP ;\
    cd /APP ;\
    curl -L https://downloads.openobserve.ai/releases/o2-enterprise/v0.80.0/openobserve-ee-v0.80.0-linux-amd64-musl.tar.gz | tar -xzv ;\
### Set Script Dir
    chmod +x /SCP/* ;\
### Set COM Dir
    chmod -R 777 /COM ;\
### Clean [!]
    /SCP/clean.sh

### [ EXPOSE ]
EXPOSE 22 5080

### [ ENTRYPOINT ]
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

### [ CMD ]
CMD ["/SCP/entrypoint.sh"]
