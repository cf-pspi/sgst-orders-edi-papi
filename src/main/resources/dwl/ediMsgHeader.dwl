%dw 2.0
output application/java
input payload multipart/form-data
---
payload.parts.'EDIMsgHeader'.content