#!/bin/bash
set -ex
#
# Usage: $0 <path_to_index.html>

while true; do
    {   echo -e 'HTTP/1.1 200 OK\r\n'
        cat "$1"
    } | ncat -l 8080

    echo hoho
done