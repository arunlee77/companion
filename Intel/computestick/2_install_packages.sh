#!/bin/bash

if [ $(id -u) -ne 0 ]; then
   echo >&2 "Must be run as root"
   exit 1
fi

set -e
set -x

. config.env

# install packages common to all
../../Common/Ubuntu/install_packages.sh

# Add any other installtion needs specific to compute stick here
  
echo "Success"




