#!/usr/bin/env pwsh

docker run --rm -v "$(pwd):/usr/share/nginx/html:ro" -p 8080:80 nginx
