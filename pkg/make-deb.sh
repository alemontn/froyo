#!/usr/bin/env bash

repo=$(realpath -L ..)

mkdir -p deb/build
cd deb/build

mkdir -p \
      DEBIAN \
      usr/bin \
      usr/lib/froyo/ext

install -m755 "$repo"/froyo usr/bin/froyo

for ext in "$repo"/ext/*.sh
do
  install -m755 "$ext" usr/lib/froyo/ext/"${ext##*'/'}"
done

cat <"$repo"/pkg/DEBIAN >DEBIAN/control

dpkg-deb --root-owner-group --build "$PWD" &>deb.log
