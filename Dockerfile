FROM alpine:edge

LABEL maintainer="mattias.rundqvist@icloud.com"


RUN apk add --update --no-cache \
    py-pip py2-pip py-setuptools py2-tornado py2-jinja2 py2-pillow py2-curl

RUN pip2 install --upgrade pip && pip2 install motioneye
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add motion@testing --force-broken-world
#RUN mkdir /var/lib/motioneye

VOLUME [ "/etc/motion", "/var/lib/motioneye" ]

COPY root /

#WORKDIR /app
#meyectl startserver -c /etc/motioneye/motioneye.conf
#ENTRYPOINT [ "/usr/bin/meyectl startserver" ]
ENTRYPOINT [ "/app/entrypoint.sh" ]