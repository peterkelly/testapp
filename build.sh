#!/bin/bash
set -eu
SCRIPT_DIR="$(dirname -- "$0")"
cd "$SCRIPT_DIR"

(cd api && \
    npm install && \
    npm run build)
