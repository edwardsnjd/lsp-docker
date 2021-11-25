# Installation

Build the image:

```sh
./build.sh
```

Edit `pylsp-docker` to mount your source directories:

```docker-compose
  volumes:
    - /some/path:/some/path
    - /other/path:/other/path
```

Make `pylsp-docker` available:

For example, add a symbolic link to somewhere on your `PATH`.

```sh
ln -s ~/code/python-lsp-server-docker/pylsp-docker ~/.local/bin/
```

Configure your editor LSP client to run this LSP server, `pylsp-docker`.
