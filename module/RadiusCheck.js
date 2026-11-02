const assert=require('assert');let draws=0,closed=0;const els={radius:{value:'1000'},radiusChoice:{textContent:''},customRadius:{value:''},radiusError:{textContent:''},radiusDialog:{close(){closed++}}};const document={getElementById:id=>els[id]};function drawCircle(){draws++;}
function radiusLabel(r){return r>=1000&&r%500===0?(r/1000)+' km':r+' m';}
function setInitialRadius(r){r=Number(r);if(!Number.isInteger(r)||r<100||r>10000)r=1000;document.getElementById('radius').value=String(r);document.getElementById('radiusChoice').textContent=radiusLabel(r)+' ▾';drawCircle();}
function openRadius(){const panel=document.getElementById('radiusDialog'),presets=document.getElementById('radiusPresets');presets.replaceChildren();for(const r of [300,500,1000,1500,2000]){const button=document.createElement('button');const active=Number(document.getElementById('radius').value)===r;button.textContent=(active?'✓ ':'')+radiusLabel(r);button.className=active?'':'secondary';button.onclick=()=>{setInitialRadius(r);panel.close();};presets.appendChild(button);}document.getElementById('customRadiusForm').hidden=true;document.getElementById('radiusError').textContent='';panel.showModal();}
function showCustomRadius(){document.getElementById('customRadiusForm').hidden=false;const input=document.getElementById('customRadius');input.value=document.getElementById('radius').value;input.focus();input.select();}
function applyCustomRadius(){const raw=document.getElementById('customRadius').value.trim(),r=Number(raw);if(!raw||!Number.isInteger(r)||r<100||r>10000){document.getElementById('radiusError').textContent='Escribe un número entero de 100 a 10 000 metros.';return;}setInitialRadius(r);document.getElementById('radiusDialog').close();}

setInitialRadius(750);assert.equal(els.radius.value,'750');assert.equal(els.radiusChoice.textContent,'750 m ▾');
els.customRadius.value='2350';applyCustomRadius();assert.equal(els.radius.value,'2350');assert.equal(closed,1);
for(const bad of ['', '99','10001','120.5','abc']){els.customRadius.value=bad;applyCustomRadius();assert.equal(els.radius.value,'2350');assert.equal(closed,1);}
for(const good of ['100','10000']){els.customRadius.value=good;applyCustomRadius();assert.equal(els.radius.value,good);}
console.log('9 radius checks passed');
