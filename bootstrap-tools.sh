#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p tools
fetch() {
 local name="$1" url="$2" expected="$3"
 if [[ ! -f "tools/$name" ]]; then
  curl --fail --location --retry 2 "$url" -o "tools/$name.tmp"
  echo "$expected  tools/$name.tmp" | sha256sum --check --status || { rm -f "tools/$name.tmp"; echo "Checksum incorrecto: $name" >&2; exit 1; }
  mv "tools/$name.tmp" "tools/$name"
 fi
 echo "$expected  tools/$name" | sha256sum --check --status || { echo "Checksum incorrecto: $name" >&2; exit 1; }
}
fetch apktool.jar https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar 66cf4524a4a45a7f56567d08b2c9b6ec237bcdd78cee69fd4a59c8a0243aeafa
fetch json.jar https://repo.maven.apache.org/maven2/org/json/json/20240303/json-20240303.jar 3cf6cd6892e32e2b4c1c39e0f52f5248a2f5b37646fdfbb79a66b46b618414ed
