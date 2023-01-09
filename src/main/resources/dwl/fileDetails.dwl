%dw 2.0
output application/json
---
read(vars.EDIMsgHeader,"application/json")