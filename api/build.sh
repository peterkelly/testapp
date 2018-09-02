#!/bin/bash
set -eu
SCRIPT_DIR="$(dirname -- "$0")"
cd "$SCRIPT_DIR"

if [ ! -e node_modules ]; then
    npm install
fi
npm run build
