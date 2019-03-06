#!/bin/bash

TEMP=/dev/shm/Fighters
DEST=$HOME/.fgfs/Aircraft

mkdir $TEMP
mkdir $DEST

# Downloading F-14 and F-15
git clone --depth=1 --branch=OPRF https://github.com/Zaretto/fg-aircraft.git $TEMP/F-14_F-15
mv $TEMP/F-14_F-15/F-15 $DEST/
mv $TEMP/F-14_F-15/f-14b $DEST/

# Downloading the Mirage
git clone --depth=1 https://github.com/5H1N0B11/Aircraft $TEMP/Mirage
mv $TEMP/Mirage/Mirage-2000 $DEST/

# Downloading the Viggen
git clone --depth=1 https://github.com/NikolaiVChr/flightgear-saab-ja-37-viggen $TEMP/Viggen
mv $TEMP/Viggen/Aircraft/JA37 $DEST/

# Downloading the mighty Mig-21
git clone --depth=1 https://github.com/l0k1/MiG-21bis $DEST/MiG-21bis

# Downloading the F-16
git clone --depth=1 https://github.com/NikolaiVChr/f16 $DEST/f16

rm -rf $TEMP
cd $DEST
ls
