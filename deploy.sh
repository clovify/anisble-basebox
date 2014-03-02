#!/usr/bin/env bash

set -e

export HOSTFILE='hosts/production'
export PLAYBOOK_FILE="base.yml";

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook -vvv ${PLAYBOOK_FILE} -vvv -i "${HOSTFILE}";
