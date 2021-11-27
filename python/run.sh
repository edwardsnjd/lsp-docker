#!/usr/bin/env bash

# A shim to make starting the pylsp container easier

exec docker run \
  --interactive \
  --rm \
  --volume "$(pwd)":"$(pwd)" \
  python-lsp-server-docker \
  "$@"
