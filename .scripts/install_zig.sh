#!/usr/bin/env bash

#Install Zig
cd $(mktemp -d) && 
curl -qfSLJO $(curl -qfsSL "https://ziglang.org/download/index.json" | jq -r '.master | ."x86_64-linux".tarball')
find . -type f -name '*.tar*' -exec tar -xvf {} \;
sudo mkdir -p "/usr/local/zig" && sudo mv "$(find . -maxdepth 1 -type d | grep -v '^.$')"/* "/usr/local/zig" 
export PATH="/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"
