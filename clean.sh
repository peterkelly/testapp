#!/bin/bash
set -eu
SCRIPT_DIR="$(dirname -- "$0")"
cd "$SCRIPT_DIR"

api/clean.sh
accounts/clean.sh
messages/clean.sh
