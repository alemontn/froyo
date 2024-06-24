# ../froyo src/make-deb.fy -omake-deb.sh -nnoComments -ynoticeFroyo -ywerror -yallowExternal
#!/usr/bin/env bash
set -e

set -x

repo: cmd =  realpath(-L ..)

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
