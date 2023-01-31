%dw 2.0
output application/java
var SalesEDITypeCodes = Mule::p('gitp.header.inbound.pmpc.dataTypeCode.salesOrder')
var EPROPoResponseTypeCodes = Mule::p('gitp.header.inbound.pmpc.dataTypeCode.poResponse')
var EPROEDIResultTypeCodes = Mule::p('gitp.header.inbound.pmpc.dataTypeCode.ediResults')
---
if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.pmpc.applicationCode.salesOrder') and (SalesEDITypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "SalesEDI_SalesOrder_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.pmpc.applicationCode.poResponse') and (EPROPoResponseTypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "EPRO_POResponse_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.pmpc.applicationCode.ediResults') and (EPROEDIResultTypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "EPRO_EDIResults_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.pmpc.applicationCode.arStatements') and vars.vTransHeaderInfo.DataTypeCode == Mule::p('gitp.header.inbound.pmpc.dataTypeCode.arStatements') ) "CMS_ARStatements_" ++ vars.vTransHeaderInfo.DataTypeCode
else "invalidInterface"