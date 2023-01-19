%dw 2.0
output application/json
---
{
  "flatFileExtension": vars.fileDetails.flatFileExtension,
  "subsidiary": vars.fileDetails.subsidiary,
  "transactionId": vars.TransactionID,
  "flatFileFormat": vars.fileDetails.flatFileFormat,
  "flatFileName": vars.fileDetails.flatFileName,
  "externalSystem": vars.fileDetails.externalSystem,
  "senderCode": Mule::p('sapi.senderCode.pmpc'),
  "applicationIdCode": vars.applicationCode,
  "dataTypeCode": vars.dataTypeCode,
  "testType": Mule::p('http.sapi.testType')
}