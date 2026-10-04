#!/usr/bin/env bash
set -euo pipefail
sudo apt-get update
sudo apt-get install -y live-build debootstrap squashfs-tools xorriso isolinux syslinux-common grub-efi-amd64-bin grub-pc-bin fontconfig imagemagick python3-pil
