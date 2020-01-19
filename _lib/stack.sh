#!/usr/bin/env bash
#
# Stack
# Version: 1.0
#
# Required variables
#  - DOCKER_STACK_NAME
#  - DOCKER_COMPOSE
#  - REDEPLOY_SLEEP

set -euo pipefail
IFS=$'\n\t'

readonly _DOCKER_STACK_NAME="${DOCKER_STACK_NAME:=stack-01}"
readonly _DOCKER_COMPOSE="${DOCKER_COMPOSE:=docker-compose.yml}"
readonly _REDEPLOY_SLEEP="${REDEPLOY_SLEEP:=15}"

__root="$(dirname "$(realpath $0)")"

###### Commands

cmd_stack_deploy() { # Deploy stack or apply changes
  docker stack deploy -c "${__root}/${_DOCKER_COMPOSE}" "${_DOCKER_STACK_NAME}"
}

cmd_stack_rm() { # Remove stack - volumes wont be removed
  docker stack rm "${_DOCKER_STACK_NAME}"
}

cmd_stack_redeploy() {
  cmd_stack_rm && sleep "${_REDEPLOY_SLEEP}" && cmd_stack_deploy
}

cmd_stack_scale_down() {
  _scale_services 0
}

cmd_stack_scale_up() {
  _scale_services 1
}

cmd_stack_help() {
  echo "Usage: $0 stack { deploy | redeploy | rm }"
}

_scale_services() {
  local replicas=$1
  local services
  services="$(docker stack services --format '{{.Name}}' "${_DOCKER_STACK_NAME}")"
  for service in ${services}; do
    docker service update -d --replicas="${replicas}" "${service}"
  done
}