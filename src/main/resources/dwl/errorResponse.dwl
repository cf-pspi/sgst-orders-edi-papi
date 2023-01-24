%dw 2.0
output application/json
---
{
 errorCode: Mule::p('errors.'++ error.errorType.identifier as String ++ '.errorCode') default 500,
 errorMessage: error.description default "The server is unable to process the request",
  errorType: Mule::p('errors.'++ error.errorType.identifier as String ++ '.errorType') default 'RUNTIME_ERROR',
 
correlationID :vars.TransactionID,
timestamp :now()
}
