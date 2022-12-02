#!/bin/sh

echo -n $PORTAINER_ADMIN_PASSWORD > /password
exec $@