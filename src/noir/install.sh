#!/usr/bin/env bash
set -e

apt update && apt install -y curl git tar gzip && rm -rf /var/lib/apt/lists/* && apt clean

export NARGO_HOME="$_REMOTE_USER_HOME/nargo"
curl -L https://raw.githubusercontent.com/noir-lang/noirup/main/install | bash
$NARGO_HOME/bin/noirup -v $VERSION

PATH="$PATH:$NARGO_HOME/bin"
