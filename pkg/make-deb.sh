#!/usr/bin/env bash

# exit on errors
set -e

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

# install to system for building
sudo mkdir -p /usr/lib/froyo
sudo install -m755 "$repo"/froyo /usr/bin/froyo

# compile each
for ext in "$repo"/ext/src/*.fy
do
  out="${ext##*'/'}" out="${out%'.fy'}".sh

  froyo -o"usr/lib/froyo/ext/$out" -ymodule "$ext"
done

cat <"$repo"/pkg/DEBIAN >DEBIAN/control

dpkg-deb --root-owner-group --build "$PWD"
