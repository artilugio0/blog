#!/usr/bin/env bash

BASE_URL="${1:-https://artilugio0.github.io}"
DEST_DIR="${2:-../artilugio0.github.io/}"

zola build --base-url "$BASE_URL"
rsync -virc public/ "$DEST_DIR"
