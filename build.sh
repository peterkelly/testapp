#!/bin/bash
set -eu
SCRIPT_DIR="$(dirname -- "$0")"
cd "$SCRIPT_DIR"

api/build.sh
accounts/build.sh
messages/build.sh
