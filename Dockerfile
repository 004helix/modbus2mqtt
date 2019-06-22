FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

COPY . /opt
WORKDIR /opt
RUN apk --no-cache add tini python py-paho-mqtt py-pip && pip install pyModbusTCP

ENTRYPOINT ["/sbin/tini", "--", "/opt/modbus2mqtt"]
