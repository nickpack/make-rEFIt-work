#!/bin/bash
mkdir /efi
mount -t msdos /dev/disk0s1 /efi
cp -rfv ./efi /efi
bless --mount /efi --setBoot --file /efi/EFI/refit/refit.efi --labelfile /efi/EFI/refit/refit.vollabel
reboot