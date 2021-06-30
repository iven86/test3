FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
