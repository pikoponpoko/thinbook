#!/bin/sh
# src/app.html（Artifact公開用の本文）を、単体で開けるHTMLに包んで dist/index.html に出力する
set -e
cd "$(dirname "$0")/.."
mkdir -p dist
{
  printf '<!doctype html>\n<html lang="ja"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"></head><body>\n'
  cat src/app.html
  printf '\n</body></html>\n'
} > dist/index.html
echo "dist/index.html"
