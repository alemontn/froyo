#!/usr/bin/env bash
# ../froyo -nnoComments -ynoticeFroyo -ywerror -omake-deb.sh src/make-deb.fy
set -e
set -x
declare repo=$(env realpath -L ..)
mkdir -p deb/build 
cd deb/build
declare -a structs=('DEBIAN' 'usr/bin' 'usr/lib/froyo/ext')
mkdir -p "${structs[@]}" 
install -m755 "$repo"/froyo usr/bin/froyo 
if [[ ${#GH_WORKFLOW} -ne 0 && $GH_WORKFLOW -eq 1 ]]
then {
sudo mkdir -p /usr/lib/froyo 
sudo install -m755 "$repo"/froyo /usr/bin/froyo 
} fi
for ext in "$repo"/ext/src/*.fy
do {
declare out=${ext##*'/'}
out=${out%'.fy'}".sh"
froyo -o"usr/lib/froyo/ext/$out" -ymodule "$ext" 
} done
echo "$(<$repo/pkg/DEBIAN)" >DEBIAN/control
dpkg-deb --root-owner-group --build "$PWD" 
