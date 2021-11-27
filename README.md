# Dockerised LSP Servers

LSP servers often have very particular pre-requisites and so can be brittle to install and configure correctly.  This project provides a collection of preconfigured LSP servers bundled as Docker images.

## Design

Each LSP server follows the same pattern; a minimal docker image that can be run with your code mounted inside in order for it to run:

- `Dockerfile` - describes how to build a minimal docker image containing just the configured LSP
- `build.sh` - simple script to build the docker image with a specific label
- `run.sh` - simple script to run the docker image, mounting your code at the same path inside the container

**NOTE: File paths**

When the container is started, the `run.sh` scripts will bind mount your current working directory (`pwd`) inside the container at the same path.  That allows your LSP server to understand and access files at the same path that your LSP client refers to them.  That means that you should be careful to start your editor/LSP client in the root directory of your project.

If that's not possible, then you will need to tweak your `run.sh` scripts to mount your source code directories correctly.

## Usage

To use a specific LSP server:

1. Build the image
2. Put the runner on your `PATH` (rename for clarity)
3. Manually call the runner as a sanity check
4. Configure your LSP client to call the runner

For example, if `~/.local/bin` is on your `PATH`, then to use the python LSP server you could do something like:
```bash
$ # Move to the particular directory
$ cd python
$ # Build the image
$ ./build.sh
$ # Symbolic link to run script on your PATH
$ ln -s $(pwd)/run.sh ~/.local/bin/pylsp-docker
$ # Sanity check
$ pylsp-docker --help
$ # Configure your LSP client to run `pylsp-docker`
```
