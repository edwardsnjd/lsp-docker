#!/usr/bin/env bash

# A shim to make starting the container easier

exec docker run \
  --interactive \
  --rm \
  --volume "$(pwd)":"$(pwd)" \
  --workdir "$(pwd)" \
  --init \
  lsp-python \
  "$@"
