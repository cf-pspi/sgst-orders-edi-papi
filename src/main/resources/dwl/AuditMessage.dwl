%dw 2.0
output application/json
---
{
    "ucid": vars.TransactionID default "",
    "apiName":app.name default "",
    "flowDirection": "out",
    "source": "SAP",
    "destination": vars.fileDetails.externalSystem default "",
    "fileName": vars.fileDetails.fileName default "",
    "action": vars.currentAction default "",
    "status": vars.flowStatus,
    "errorCode": "",
    "errorMessage": "",
    "createdTimestamp": now(),
    "subsidary": vars.fileDetails.subsidiary default ""
}