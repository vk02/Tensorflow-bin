#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1eSYp-l9Nw-HsUK85EdAXQ772Wa5Skskw" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1eSYp-l9Nw-HsUK85EdAXQ772Wa5Skskw" -o tensorflow-2.5.0-cp37-none-linux_aarch64.whl
echo Download finished.
