# Contributing to RwandaOS

Thanks for your interest in RwandaOS.

## Requirements

- Debian 13 (trixie) x86_64 build host
- `git`, `lb` (live-build), and the packages from `scripts/setup-build-host.sh`

## Development loop

```bash
sudo ./scripts/setup-build-host.sh
./scripts/build-iso.sh
```

- The built ISO is written to `iso-build/`.
- Regression-prone areas: `iso-build/config/`, `scripts/`, `branding/`.

## Rules of thumb

- Do not rebuild the ISO on Kali or other non-Debian 13 hosts unless you know exactly why; builds are dependency-tested on trixie.
- Do not hardcode national-flag colors across the UI; use the accent defined in `branding/colors.md`.
- If you add a new wallpaper/theme asset, regenerate derived assets with `scripts/generate-assets.sh`.
- Every change must be reproducible via the build scripts before you open a PR.

## Pull requests

1. Fork + create a branch (e.g. `branding/gtk-fix`).
2. Keep PRs focused on one thing.
3. Describe the intent and how you tested it in the PR description.
4. Wait for review before merging to `main`.

## Reporting bugs

Open an issue with:

- Host OS / live-build version
- Full `lb build` log (truncate repeating apt lines)
- Steps to reproduce + expected behavior
