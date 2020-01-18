#!/usr/bin/env bash
#
# Run helper script

set -euo pipefail
IFS=$'\n\t'

readonly DOCKER_STACK_NAME="rabbitmq"
readonly DOCKER_COMPOSE="docker-compose.yml"
readonly REDEPLOY_SLEEP=15

_deploy() {
    docker stack deploy -c "${DOCKER_COMPOSE}" "${DOCKER_STACK_NAME}"
}

_rm() {
    docker stack rm "${DOCKER_STACK_NAME}"
}

_redeploy() {
  _rm && sleep ${REDEPLOY_SLEEP} && _deploy
}

_help_short() {
  echo "Usage: $0 { deploy | redeploy | rm }"
}

main() {
  local command="${1:-}"
  case ${command} in
    deploy)   _deploy ;;
    redeploy) _redeploy ;;
    rm)       _rm ;;
    *)        _help_short "$@" ;;
  esac
}

main "$@"