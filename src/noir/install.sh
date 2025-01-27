#!/usr/bin/env bash
set -e

apt update && apt install -y curl git tar gzip && rm -rf /var/lib/apt/lists/* && apt clean

curl -L https://raw.githubusercontent.com/noir-lang/noirup/main/install | bash
noirup -v $VERSION
