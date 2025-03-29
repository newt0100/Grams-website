#docker run -d -p 8080:80 --name html_server -v "$(pwd)":/usr/share/nginx/html:ro nginx

docker run --rm -p 8080:80 --name html_server \
    -v "$(pwd)/nginx/:/etc/nginx/conf.d/" \
    -v "$(pwd):/usr/share/nginx/html:ro" \
    nginx