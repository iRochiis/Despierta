#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
: "${ANDROID_HOME:?Exporta ANDROID_HOME con la ruta del SDK Android}"
: "${JAVA_HOME:?Exporta JAVA_HOME con la ruta de JDK 17}"
MODE="${1:-unsigned}"
case "$MODE" in unsigned|debug|release) ;; *) echo 'Uso: bash build.sh [unsigned|debug|release]' >&2; exit 2;; esac
BT="$ANDROID_HOME/build-tools/35.0.0"
JAR="$ANDROID_HOME/platforms/android-35/android.jar"
bash scripts/bootstrap-tools.sh
rm -rf out
mkdir -p out/classes out/dex
"$JAVA_HOME/bin/javac" -source 8 -target 8 -encoding UTF-8 -cp "$JAR" -d out/classes module/mx/jorge/despierta/*.java
for test in ScheduleTimesCheck VibrationPatternCheck JourneyRulesCheck; do
 "$JAVA_HOME/bin/javac" -cp "out/classes:tools/json.jar:$JAR" -d out/classes "module/$test.java"
 class="$test"
 if [[ "$test" == VibrationPatternCheck ]]; then class="mx.jorge.despierta.$test"; fi
 "$JAVA_HOME/bin/java" -cp "out/classes:tools/json.jar:$JAR" "$class"
done
python3 scripts/check-public.py
find out/classes/mx -name '*.class' ! -name 'AlarmStore.class' ! -name 'TripService.class' ! -name 'VibrationPatternCheck.class' > out/input.txt
"$BT/d8" --lib "$JAR" --min-api 26 --output out/dex @out/input.txt
"$JAVA_HOME/bin/java" -jar tools/apktool.jar b project -o out/base.apk
cp out/dex/classes.dex out/classes2.dex
(cd out && zip -q base.apk classes2.dex)
"$BT/zipalign" -f 4 out/base.apk out/Despierta-unsigned.apk
if [[ "$MODE" == unsigned ]]; then echo 'APK sin firmar: out/Despierta-unsigned.apk'; exit 0; fi
if [[ "$MODE" == debug ]]; then
 mkdir -p .private
 if [[ ! -f .private/debug.keystore ]]; then
  "$JAVA_HOME/bin/keytool" -genkeypair -keystore .private/debug.keystore -storepass android -keypass android -alias androiddebugkey -dname 'CN=Android Debug' -keyalg RSA -keysize 2048 -validity 10000
 fi
 SIGNING_KEYSTORE=.private/debug.keystore
 SIGNING_ALIAS=androiddebugkey
 export SIGNING_STORE_PASSWORD=android SIGNING_KEY_PASSWORD=android
 OUTPUT=out/Despierta-debug.apk
else
 : "${SIGNING_KEYSTORE:?Indica una clave privada externa al repositorio}"
 : "${SIGNING_ALIAS:?Indica el alias de firma}"
 : "${SIGNING_STORE_PASSWORD:?Indica la contraseña mediante una variable de entorno privada}"
 export SIGNING_KEY_PASSWORD="${SIGNING_KEY_PASSWORD:-$SIGNING_STORE_PASSWORD}"
 OUTPUT=out/Despierta.apk
fi
"$BT/apksigner" sign --ks "$SIGNING_KEYSTORE" --ks-pass env:SIGNING_STORE_PASSWORD --key-pass env:SIGNING_KEY_PASSWORD --ks-key-alias "$SIGNING_ALIAS" --out "$OUTPUT" out/Despierta-unsigned.apk
"$BT/apksigner" verify --verbose --print-certs "$OUTPUT"
sha256sum "$OUTPUT"
