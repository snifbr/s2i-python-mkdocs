#!/usr/bin/env bash
set -Eeo pipefail
# TODO swap to -Eeuo pipefail above (after handling all potentially-unset variables)

if [[ -d /mkdocs ]]; then
  cd /mkdocs
  mkdocs build --clean
fi

exec "${@}"
