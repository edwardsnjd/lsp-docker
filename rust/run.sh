#!/usr/bin/env bash

# A shim to make starting the container easier

exec docker run \
  --interactive \
  --rm \
  --volume "$(pwd)":"$(pwd)" \
  --workdir "$(pwd)" \
  --user $(id -u):$(id -g) \
  lsp-rust \
  "$@"
