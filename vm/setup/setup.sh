#!/bin/bash

DIR=$(dirname $0)

if [ -f "$DIR/$(arch)/setup_vm.sh" ]; then
  $DIR/$(arch)/setup_vm.sh
else
  >&2 echo "$(arch)/setup_vm.sh not found"
  exit 1
fi