#!/bin/sh

set -e
 
if [  "$1" !=  "${1#-}" ]; then
    set -- java $JAVA_OPTS -jar wiremock.jar "$@" 
    #exec gosu user? "$@"
fi

exec "$@"