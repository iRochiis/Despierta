"""Checks compatibility declarations, ABI independence and public package secrets."""
from pathlib import Path
import re,xml.etree.ElementTree as ET
root=Path(__file__).resolve().parents[1]
a='{http://schemas.android.com/apk/res/android}'
m=ET.parse(root/'project/AndroidManifest.xml').getroot()
assert m.find('application').get(a+'allowBackup')=='false'
assert 'minSdkVersion: 26' in (root/'project/apktool.yml').read_text()
assert not list((root/'project').rglob('*.so')), 'Native ABI library requires a compatibility review'
assert not (root/'development.keystore').exists(), 'Private signing key in public source'
for service in m.findall('application/service'):assert service.get(a+'exported')=='false'
for activity in m.findall('application/activity'):
 if activity.get(a+'name')!='.MainActivity':assert activity.get(a+'exported')=='false'
required={f.get(a+'name'):f.get(a+'required') for f in m.findall('uses-feature')}
assert required['android.hardware.location.gps']=='true'
assert required['android.hardware.bluetooth']=='false'
for p in root.rglob('*'):
 if not p.is_file() or any(x in {'.git','.private','out','build','dist'} for x in p.relative_to(root).parts):continue
 assert p.suffix.lower() not in {'.jks','.keystore','.p12','.pem','.key'}, 'Signing material: '+str(p)
 if p.suffix in {'.java','.smali'}:
  content=p.read_text()
  assert not re.search(r'com\.(miui|huawei|samsung)\.[A-Za-z]',content), 'Vendor-only intent found'
print('Public source checks passed: API 26+, no native ABI restriction, private components, no signing keys or vendor-only packages')
