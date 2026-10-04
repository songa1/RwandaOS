#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
if [ "$(. /etc/os-release && echo "$ID")" != "debian" ]; then
  echo "WARNING: this script is intended for a Debian 13 (trixie) x86_64 build host." >&2
fi
cd "$ROOT/iso-build"
sudo lb clean
# lb clean wipes .build/ stagefiles; recreate the config stagefile since
# our config/ tree is maintained manually (we don't re-run lb config).
sudo mkdir -p .build
sudo touch .build/config
sudo lb build
