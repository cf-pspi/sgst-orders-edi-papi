%dw 2.0
output application/json
---
if( Mule::p('routing.systems.mm.po') contains vars.fileDetails.externalSystem) (Mule::p('sapi.dataTypeCode.purchaseOrder'))
else 
	if( Mule::p('routing.systems.mm.pr') contains vars.fileDetails.externalSystem) (Mule::p('sapi.dataTypeCode.purchaseResults'))
else
	if( Mule::p('routing.systems.cms') contains vars.fileDetails.externalSystem) (Mule::p('sapi.dataTypeCode.fpl'))
else
	if( Mule::p('routing.systems.fi') contains vars.fileDetails.externalSystem) (Mule::p('sapi.dataTypeCode.arStatements'))
else
	"InvalidDataTypeCode"