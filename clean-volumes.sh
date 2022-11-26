#!/bin/bash

volumes=`docker volume ls -q`
if [ ! -z "$volumes" ];
then
  docker volume rm $volumes
fi
