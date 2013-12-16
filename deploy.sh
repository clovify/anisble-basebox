#!/usr/bin/env bash

set -e

export HOSTFILE='/Users/shrikeh/Projects/shrikeh.net/anisble-basebox/hosts/production'
export PLAYBOOK_PATH='/Users/shrikeh/Projects/shrikeh.net/ansible';
export PLAYBOOK_FILE="${PLAYBOOK_PATH}/playbook.yml";

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook -vvv ${PLAYBOOK_FILE} -vvv -i "${HOSTFILE}";
