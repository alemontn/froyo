// exit on errors
set(-e)

// show commands as they are being executed
set(-x)

// path of git repo
repo: cmd = (env(realpath -L ..))

env(mkdir -p deb/build)
cd(deb/build)

// make build structures
structs: array = ['DEBIAN', 'usr/bin', 'usr/lib/froyo/ext']
env(mkdir -p "${structs[@]}")

// copy with permissions
env(install -m755 "$repo"/froyo usr/bin/froyo)

if ((${#GH_WORKFLOW} != 0 && $GH_WORKFLOW = 1))
{
  // install to system for building
  env(sudo mkdir -p /usr/lib/froyo)
  env(sudo install -m755 "$repo"/froyo /usr/bin/froyo)
}

// compile each
foreach(ext, "$repo"/ext/src/*.fy)
{
  out: pointer = ${ext##*'/'}
  out = ${out%'.fy'}
  env(froyo -o"usr/lib/froyo/ext/$out" -ymodule "$ext")
}

echo("$(<$repo/pkg/DEBIAN)" >DEBIAN/control)
env(dpkg-deb --root-owner-group --build "$PWD")
