%dw 2.0
output application/json
---
{
errorCode :	vars.errorCode,
errorMessage :error.description default "Unable to connect to server",
errorType	: vars.errorType,
correlationID :vars.transactionID,
timestamp :now()
}