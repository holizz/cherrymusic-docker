#!/bin/sh
set -xe
rm -f /.local/share/cherrymusic/cherrymusic.pid
exec python3 /cherrymusic/cherrymusic --port 3000
