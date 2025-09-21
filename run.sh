#!/bin/bash

docker run --rm -p 8080:80 --name gram_web \
    -v "${PWD}/nginx:/etc/nginx/conf.d/" \
    -v "${PWD}:/usr/share/nginx/html:ro" \
    nginx
