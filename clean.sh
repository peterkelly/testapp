#!/bin/bash
set -eu
SCRIPT_DIR="$(dirname -- "$0")"
cd "$SCRIPT_DIR"
rm -rf api/dist
rm -rf api/node_modules
