#!/usr/bin/env bash

set -e

export HOSTFILE='/Users/shrikeh/Projects/shrikeh.net/anisble-basebox/hosts/production'
export PLAYBOOK_PATH='/Users/shrikeh/Projects/shrikeh.net/anisble-basebox';
export PLAYBOOK_FILE="${PLAYBOOK_PATH}/base.yml";

export ANSIBLE_HOST_KEY_CHECKING=false
export EXTRA_VARS_FILE="${HOME}/test.json"

ansible-playbook -vvv ${PLAYBOOK_FILE} -v -i "${HOSTFILE}" --extra-vars "@${EXTRA_VARS_FILE}";
