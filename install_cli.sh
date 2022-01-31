#!/bin/bash

set -e
set -x

arch="amd64"
if [[ $(uname -m) == "aarch64" ]]; then
  arch="arm64"
fi

extract_to="$HOME/.wakatime/"

os="unknown"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  os="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  os="darwin"
elif [[ "$OSTYPE" == "cygwin" ]]; then
  os="windows"
elif [[ "$OSTYPE" == "msys" ]]; then
  os="windows"
elif [[ "$OSTYPE" == "win32" ]]; then
  os="windows"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  os="freebsd"
elif [[ "$OSTYPE" == "openbsd"* ]]; then
  os="openbsd"
elif [[ "$OSTYPE" == "netbsd"* ]]; then
  os="netbsd"
fi

zip_file="$extract_to/wakatime-cli-${os}-${arch}.zip"
symlink="$extract_to/wakatime-cli"
extracted_binary="$extract_to/wakatime-cli-${os}-${arch}"
if [[ "$os" == "windows" ]]; then
  extracted_binary="$extracted_binary.exe"
fi
url="https://github.com/wakatime/wakatime-cli/releases/latest/download/wakatime-cli-${os}-${arch}.zip"

cd "$extract_to"

echo "Downloading wakatime-cli to $zip_file ..."
curl -L "$url" -o "$zip_file"

echo "Unzipping zip_file ..."
unzip -q -o "$zip_file" || true

ln -fs "$extracted_binary" "$symlink"
chmod a+x "$extracted_binary"

echo "Installed $symlink"

rm "$zip_file"

echo "Finished installing wakatime-cli."

exit 0
