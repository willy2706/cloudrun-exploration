FROM alpine:3.15
#FROM songrgg/alpine-debug
RUN set -ex; \
    apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/v3.15/main lz4 lz4-dev cyrus-sasl cyrus-sasl-dev openssl openssl-dev zlib zlib-dev zstd zstd-dev ca-certificates; \
    apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/v3.15/community librdkafka librdkafka-static librdkafka-dev

WORKDIR /project

COPY ./build/app ./app

CMD [ "./app" ]