# modbus2mqtt

Modbus (tcp) to mqtt bridge

Listen on
```
mqtt://MQTT_ADDR:MQTT_PORT/modbus2mqtt/coil/<n>/set
```

Publish to
```
mqtt://MQTT_ADDR:MQTT_PORT/modbus2mqtt/coil/<n>
```

read/write first 16 coils
payload is "0" or "1"

Environment
```
# mosquitto broker
MQTT_HOST=<host>
MQTT_PORT=<port>
# modbus tcp/rtu
MODBUS_HOST=<host>
MODBUS_PORT=<port>
```
