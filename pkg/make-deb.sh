#!/usr/bin/env bash

# exit on errors
set -e
# show commands as they are being executed
set -x

# path of git repo
repo=$(realpath -L ..)

mkdir -p deb/build
cd deb/build

# make build structures
mkdir -p \
      DEBIAN \
      usr/bin \
      usr/lib/froyo/ext

# copy with permissions
install -m755 "$repo"/froyo usr/bin/froyo

if [ -n "$GH_WORKFLOW" ] && [ $GH_WORKFLOW -eq 1 ]
then
  # install to system for building
  sudo mkdir -p /usr/lib/froyo
  sudo install -m755 "$repo"/froyo /usr/bin/froyo
fi

# compile each
for ext in "$repo"/ext/src/*.fy
do
  out="${ext##*'/'}" out="${out%'.fy'}".sh

  froyo -o"usr/lib/froyo/ext/$out" -ymodule "$ext"
done

cat <"$repo"/pkg/DEBIAN >DEBIAN/control

dpkg-deb --root-owner-group --build "$PWD"
