#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
python3 - "$ROOT" <<'PY'
import os, sys
from PIL import Image, ImageFilter, ImageDraw

ROOT = sys.argv[1]
LOGO = os.path.join(ROOT, 'branding/logo/RwandaOS.png')
OUT_ICON_THEME = os.path.join(ROOT, 'iso-build/config/includes.chroot_after_packages/usr/share/icons/rwandaos')
OUT_HICOLOR = os.path.join(ROOT, 'iso-build/config/includes.chroot_after_packages/usr/share/icons/hicolor')
PLYMOUTH = os.path.join(ROOT, 'iso-build/config/includes.chroot_after_packages/usr/share/plymouth/themes/rwandaos')
BOOT_ISOLINUX = os.path.join(ROOT, 'iso-build/config/bootloaders/isolinux')
BOOT_GRUB = os.path.join(ROOT, 'iso-build/config/bootloaders/grub-pc')

os.makedirs(OUT_ICON_THEME, exist_ok=True)
os.makedirs(PLYMOUTH, exist_ok=True)
os.makedirs(BOOT_ISOLINUX, exist_ok=True)
os.makedirs(BOOT_GRUB, exist_ok=True)

img = Image.open(LOGO).convert('RGBA')
# chroma-key: make near-white transparent
data = list(img.getdata())
new = []
for r,g,b,a in data:
    if r>235 and g>235 and b>235:
        new.append((r,g,b,0))
    else:
        new.append((r,g,b,a))
img.putdata(new)
img = img.filter(ImageFilter.GaussianBlur(0.5))

sizes = {
    '16x16':16,'22x22':22,'32x32':32,'48x48':48,'64x64':64,
    '128x128':128,'256x256':256,'512x512':512,'scalable':256,
}
for sub,s in sizes.items():
    for base in (OUT_ICON_THEME, OUT_HICOLOR):
        d = os.path.join(base, sub, 'apps')
        os.makedirs(d, exist_ok=True)
        resized = img.resize((s,s), Image.LANCZOS)
        resized.save(os.path.join(d, 'rwandaos.png'))

# plymouth logo (small, keep aspect)
small = img.resize((64,64), Image.LANCZOS)
small.save(os.path.join(PLYMOUTH, 'logo.png'))

# simple progress box/bar images
box = Image.new('RGBA', (204, 20), (11, 27, 52, 255))
d = ImageDraw.Draw(box)
d.rectangle([0,0,203,19], outline=(0,161,222,255), width=2)
box.save(os.path.join(PLYMOUTH, 'progress_box.png'))
bar = Image.new('RGBA', (200, 16), (0,161,222,255))
bar.save(os.path.join(PLYMOUTH, 'progress_bar.png'))

# boot splash images: logo centered on dark background
for path, size in [(os.path.join(BOOT_ISOLINUX,'splash.png'), (640,480)),
                   (os.path.join(BOOT_GRUB,'splash.png'), (800,600))]:
    bg = Image.new('RGB', size, (11,27,52))
    # scale logo to fit 40% of smaller dimension
    dim = min(size)
    s = int(dim*0.4)
    logo = img.resize((s,s), Image.LANCZOS)
    bg.paste(logo, ((size[0]-s)//2, (size[1]-s)//2), logo)
    bg.save(path)

print('assets generated')
PY
