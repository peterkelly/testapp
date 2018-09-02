#!/bin/bash
set -eu
SCRIPT_DIR="$(dirname -- "$0")"
cd "$SCRIPT_DIR"

rm -rf dist
rm -rf node_modules
