var integrityCheckStorage=new Set,tenMinutes=6e5;function generateStackTrace(){for(var e=[],t=arguments.callee;t;)e.push(t.name||""),t=t.caller;return e.join("/")}function setIntegrityCheckStorage(n,r,a,c){var i=generateStackTrace(),e=new Promise(function(t,e){r?c.mac.importKey(btoa(r)).then(function(e){c.mac.calculateMac(a,e).then(function(e){t({fingerprint:e,encryptedData:n,stackTrace:i})})}):e()});integrityCheckStorage.add({fingerprint:e,encryptedData:n})}setInterval(function(){var e;200<=integrityCheckStorage.size&&(e=Array.from(integrityCheckStorage),integrityCheckStorage=new Set(e.slice(-50)))},tenMinutes);