#!/bin/sh

envsubst < /tools/init.sql > /tools/out.sql
exec $@