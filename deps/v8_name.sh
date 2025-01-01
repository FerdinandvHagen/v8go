#!/bin/sh

target_arch="$1"

os=""
case "$(uname -s)" in
  Linux)
    os="linux"
    ;;
  Darwin)
    os="darwin"
    ;;
  *)
    echo "Unknown OS type"
    exit 1
esac

archive_name="v8_${os}_${target_arch}.a"

echo "Using Archive Name: $archive_name"

echo "ARCHIVE_NAME=$archive_name" >> "$GITHUB_ENV"