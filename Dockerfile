ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN \
  apk add --no-cache \
    npm

WORKDIR /data

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
