var REPORT_ERROR_URL="/lmiapi/report-error",logger={error:function(e,t){this.log("ERROR",e,t)},warning:function(e,t){this.log("WARNING",e,t)},info:function(e,t){this.log("INFO",e,t)},debug:function(e,t){this.log("DEBUG",e,t)},notice:function(e,t){this.log("NOTICE",e,t)},alert:function(e,t){this.log("ALERT",e,t)},critical:function(e,t){this.log("CRITICAL",e,t)},emergency:function(e,t){this.log("EMERGENCY",e,t)},log:function(e,t,o){var n=REPORT_ERROR_URL,t={message:t,context:o,level:e};try{var r=new XMLHttpRequest;"object"==typeof bg&&"function"==typeof bg.get&&"string"==typeof bg.get("base_url")?r.open("POST",bg.get("base_url").replace(/\/$/,"")+n):base_url?r.open("POST",base_url.replace(/\/$/,"")+n):r.open("POST",n),r.setRequestHeader("Content-type","application/json"),r.send(JSON.stringify(t))}catch(e){console.warn("Error reporting log",e,t)}}};