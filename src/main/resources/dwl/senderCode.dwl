%dw 2.0
output application/java
---
if(vars.fileDetails.subsidiary == "PAPVN-TL1") 
"${sapi.senderCode.papvntl1}"
else if(vars.fileDetails.subsidiary == "PAPVN-TL2") 
"${sapi.senderCode.papvntl2}"
else if(vars.fileDetails.subsidiary == "PMPC")
"${sapi.senderCode.pmpc}"
else 
"InvalidSenderCode"