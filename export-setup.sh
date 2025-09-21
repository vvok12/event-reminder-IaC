#!/bin/sh
docker compose config | grep -oP "container_name:\s+\K(.*)" | while read cn; do docker export "${cn}" > "${cn}.tar"; done