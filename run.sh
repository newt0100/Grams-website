#!/bin/bash

docker run --rm -p 8080:80 --name gram_web \
    -v "C:/Users/gramp/Desktop/Game projects/gram_web/nginx/:/etc/nginx/conf.d/" \
    -v "C:/Users/gramp/Desktop/Game projects/gram_web/:/usr/share/nginx/html:ro" \
    nginx
