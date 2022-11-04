#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c91535bc-198c-41dc-a4c5-2875a024315a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

