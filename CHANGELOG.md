# Changelog

All notable changes to RwandaOS are documented here.

## [Unreleased]

### Added
- Debian 13 (trixie) + GNOME 48 live ISO build configuration
- Plymouth `rwandaos` script boot splash
- Bootloader splash screens for syslinux (640×480) and GRUB (800×600)
- GDM login branding (wallpaper, logo, banner, dark scheme)
- Google Sans UI font + fontconfig default
- RwandaOS icon theme (Adwaita inherit)
- Rwanda Blue accent color via dconf + GTK4 override
- Dream/Wildlife wallpapers with dark-mode variant
- RwandaOS os-release identity + `/etc/issue` + hostname
- Rwanda OS identity packaging skeleton (`packages/rwandaos-identity`)

### Fixed
- Removed old `One-config` layout under `config/package-lists/config/`
- Fixed `gnome-screenshot` package name typo

### Changed
- Moved ISO config from `config/includes.chroot/` to `includes.chroot_after_packages/`
- Default user `rwanda`, hostname `rwandaos`, dark session
