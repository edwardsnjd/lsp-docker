# Installation

Build the image:

```sh
./build.sh
```

Make `pylsp-docker` available somewhere on your `PATH`, for example:

```sh
ln -s ~/code/python-lsp-server-docker/pylsp-docker ~/.local/bin/
```

Configure your editor LSP client to run this LSP server, `pylsp-docker`.
