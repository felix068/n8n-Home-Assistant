FROM alpine

# Install requirements for add-on
RUN apk add -q --no-cache nodejs=20.10.0-r1
RUN apk add -q --no-cache npm 

WORKDIR /data
EXPOSE 5678
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]