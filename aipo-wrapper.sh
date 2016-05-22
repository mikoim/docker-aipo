#!/bin/sh

DATA=/srv/aipo/postgres/data

if [ -d "$DATA.new" ]; then
  if [ ! "$(ls -A $DATA)" ]; then
    cp -a "$DATA.new/." "$DATA/"
  fi

  rm -fr "$DATA.new"
fi

/srv/aipo/bin/startup.sh
tail -f /dev/null
