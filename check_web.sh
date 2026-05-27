#!/usr/bin/env bash

FILE="/var/www/html/index.html"
HOST="127.0.0.1"
PORT="80"

test -f "$FILE" || exit 1
timeout 2 bash -c "</dev/tcp/${HOST}/${PORT}" >/dev/null 2>&1 || exit 1

exit 0