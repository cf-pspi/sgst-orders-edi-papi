%dw 2.0
output application/java
---
if(vars.fileDetails.externalSystem == "EPRO" or vars.fileDetails.externalSystem == "IPS")
(Mule::p('sapi.resource.path.po'))
else if(vars.fileDetails.externalSystem == "ECITA")
(Mule::p('sapi.resource.path.pr'))
else if(vars.fileDetails.externalSystem == "SALES_EDI")
(Mule::p('sapi.resource.path.fpl'))
else if(vars.fileDetails.externalSystem == "CMS")
(Mule::p('sapi.resource.path.arStatements'))
else
"InvalidResourcePath"