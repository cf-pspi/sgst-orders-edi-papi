%dw 2.0
output application/java
var SalesEDITypeCodes = Mule::p('gitp.header.inbound.papvntl1.dataTypeCode.salesOrder')
var EPROPoResponseTypeCodes = Mule::p('gitp.header.inbound.papvntl1.dataTypeCode.poResponse')
var EPROEDIResultTypeCodes = Mule::p('gitp.header.inbound.papvntl1.dataTypeCode.ediResults')
---
if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl1.applicationCode.salesOrder') and (SalesEDITypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "SalesEDI_SalesOrder_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl1.applicationCode.poResponse') and (EPROPoResponseTypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "EPRO_POResponse_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl1.applicationCode.ediResults') and (EPROEDIResultTypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "EPRO_EDIResults_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl1.applicationCode.arStatements') and vars.vTransHeaderInfo.DataTypeCode == Mule::p('gitp.header.inbound.papvntl1.dataTypeCode.arStatements') ) "CMS_ARStatements_" ++ vars.vTransHeaderInfo.DataTypeCode
else "invalidInterface"