#!/usr/bin/env bash

set -o errexit
set -o nounset

_brew_prefix=$(brew --prefix)
_cmd="$1" && shift
_cmd=$(basename ${_cmd})
opts="$@"

ec2_apitools_bin="${_brew_prefix}/bin"

if [ -h "${ec2_apitools_bin}/${_cmd}" ]
then
  set $(grep ec2-cmd "${ec2_apitools_bin}/${_cmd}")
elif [ -h "${ec2_apitools_bin}/ec2-${_cmd}" ]
then
  set $(grep ec2-cmd "${ec2_apitools_bin}/ec2-${_cmd}")
else
  echo 'Unknown command'
  exit
fi

cmd="$2"
ng com.amazon.aes.webservices.client.cmd.${cmd} ${opts}
