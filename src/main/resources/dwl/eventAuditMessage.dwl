%dw 2.0
output application/json
---
{
    
    "flowDirection": Mule::p('api.flowDirection'),
    "source": Mule::p('api.flowDirection'),
    "target": vars.fileDetails.externalSystem ,
    "fileName": vars.fileDetails.flatFileName ,
    "errorCode": "",
    "errorMessage": "",
    "subsidary": vars.fileDetails.subsidiary 
}