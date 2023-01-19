%dw 2.0
output application/json
---
if( Mule::p('routing.systems.mm.po') contains vars.fileDetails.externalSystem) (Mule::p('sapi.applicationCode.purchaseOrder'))
else 
	if( Mule::p('routing.systems.mm.pr') contains vars.fileDetails.externalSystem) (Mule::p('sapi.applicationCode.purchaseResults'))
else
	if( Mule::p('routing.systems.cms') contains vars.fileDetails.externalSystem) (Mule::p('sapi.applicationCode.fpl'))
else
	if( Mule::p('routing.systems.fi') contains vars.fileDetails.externalSystem) (Mule::p('sapi.applicationCode.arStatements'))
else
	"InvalidApplicationCode"