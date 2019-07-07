FROM lsiobase/alpine:3.10

RUN set -xe && \
    apk add --no-cache smartmontools msmtp mailx && \
    ln -sf /usr/bin/msmtp /usr/sbin/sendmail

COPY root/ /
