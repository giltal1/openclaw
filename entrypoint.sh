#!/bin/sh
# Fix volume permissions for the non-root node user
if [ -d "/data" ]; then
  chown -R node:node /data 2>/dev/null || true
fi
# Drop to node user and exec the CMD
exec runuser -u node -- "$@"
