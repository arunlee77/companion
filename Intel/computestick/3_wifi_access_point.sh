#!/bin/bash

if [ $(id -u) -ne 0 ]; then
   echo >&2 "Must be run as root"
   exit 1
fi

if [[ $# -eq 0 ]] ; then
    echo 'Must provide an Interface name'
    exit 1
fi

set -e
set -x

. config.env

# most of this is common:
../../Common/Ubuntu/3_wifi_access_point.sh

echo "Success"
exit 0

