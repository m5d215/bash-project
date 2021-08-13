#!/usr/bin/env bash

set -Ceuo pipefail

PROJECT_NAME=$1
ROOT_DIR=$(cd -- "${0%/*}" && pwd)

mv "$ROOT_DIR/lib/"{PROJECT_NAME,$PROJECT_NAME}
mv "$ROOT_DIR/libexec/"{PROJECT_NAME,$PROJECT_NAME}

sed -i -e "s/PROJECT_NAME/$PROJECT_NAME/g" bin/*

cat <<EOT >|"$ROOT_DIR/README.md"
# $PROJECT_NAME
EOT

rm "$0"
