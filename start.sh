#!/bin/sh
set -e

echo "Starting Apache HTTPD in foreground..."
/usr/sbin/httpd -DFOREGROUND
