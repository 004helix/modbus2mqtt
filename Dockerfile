FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

RUN apk --no-cache add python3 py3-paho-mqtt py3-pip && pip3 install pyModbusTCP && \
 echo "mb2mq:x:1000:" >> /etc/group && echo "mb2mq:x:1000:1000:mb2mq:/:/sbin/nologin" >> /etc/passwd
COPY modbus2mqtt /usr/bin/modbus2mqtt
USER mb2mq

ENTRYPOINT ["/usr/bin/modbus2mqtt"]
