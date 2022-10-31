#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec foreman start -f Procfile.dev "$@"
# bundle exec rails s -b 0.0.0.0
