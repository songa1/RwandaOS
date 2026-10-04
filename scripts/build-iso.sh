#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
if [ "$(. /etc/os-release && echo "$ID")" != "debian" ]; then
  echo "WARNING: this script is intended for a Debian 13 (trixie) x86_64 build host." >&2
fi
cd "$ROOT/iso-build"
sudo lb clean
sudo lb build
