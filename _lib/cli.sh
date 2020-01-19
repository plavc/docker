#!/usr/bin/env bash
#
# Run helper script
# Version: 1.0

set -euo pipefail
IFS=$'\n\t'

__command_prefix='cmd'

_command_from_args() {
  local command="${__command_prefix}"
  for d in "$@"; do
    command="${command}_${d}"
  done
  echo "${command}"
}

_command_execute() {
  local cmd_fun
  cmd_fun="$(_command_from_args "$@")"
  if [[ "$(type -t "${cmd_fun}")" != 'function' ]]; then
    cmd_fun="$(_command_from_args "$@" 'help')"
  fi
  ${cmd_fun} "$@"
}

main() {
  _command_execute "$@"
}