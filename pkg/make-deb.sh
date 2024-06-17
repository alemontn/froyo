#!/usr/bin/env bash

repo=$(realpath -L ..)

mkdir -p deb/build
cd deb/build

mkdir -p \
      DEBIAN \
      usr/bin \
      usr/lib/froyo/ext

install -m755 "$repo"/froyo usr/bin/froyo

sudo mkdir -p /usr/lib/froyo
sudo install -m755 "$repo"/froyo /usr/bin/froyo

for ext in "$repo"/ext/src/*.fy
do
  out="${ext##*'/'}" out="${out%'.fy'}".sh

  froyo -o"usr/lib/froyo/ext/$out" -ymodule "$ext"
done

cat <"$repo"/pkg/DEBIAN >DEBIAN/control

dpkg-deb --root-owner-group --build "$PWD" &>deb.log
