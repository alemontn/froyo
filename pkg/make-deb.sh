#!/usr/bin/env bash
# /usr/bin/froyo -ynoticeFroyo -ycomments src/make-deb.fy -omake-deb.sh
# exit on errors
set -e
# show commands as they are being executed
set -x
# path of git repo
declare repo=$(env realpath -L ..)
mkdir -p deb/build 
cd deb/build
# make build structures
declare -a structs=('DEBIAN' 'usr/bin' 'usr/lib/froyo/ext')
mkdir -p "${structs[@]}" 
# copy with permissions
install -m755 "$repo"/froyo usr/bin/froyo 
if [[ ${#GH_WORKFLOW} -ne 0 && $GH_WORKFLOW -eq 1 ]]
then {
# install to system for building
sudo mkdir -p /usr/lib/froyo 
sudo install -m755 "$repo"/froyo /usr/bin/froyo 
} fi
# compile each
for ext in "$repo"/ext/src/*.fy
do {
declare out=${ext##*'/'}
out=${out%'.fy'}".sh"
froyo -o"usr/lib/froyo/ext/$out" -ymodule "$ext" 
} done
echo "$(<$repo/pkg/DEBIAN)" >DEBIAN/control
dpkg-deb --root-owner-group --build "$PWD" 
