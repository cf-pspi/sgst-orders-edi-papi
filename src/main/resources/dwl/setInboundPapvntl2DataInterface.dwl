%dw 2.0
output application/java
var SalesEDITypeCodes = Mule::p('gitp.header.inbound.papvntl2.dataTypeCode.salesOrder')
var EPROPoResponseTypeCodes = Mule::p('gitp.header.inbound.papvntl2.dataTypeCode.poResponse')
var EPROEDIResultTypeCodes = Mule::p('gitp.header.inbound.papvntl2.dataTypeCode.ediResults')
---
if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl2.applicationCode.salesOrder') and (SalesEDITypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "SalesEDI_SalesOrder_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl2.applicationCode.poResponse') and (EPROPoResponseTypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "EPRO_POResponse_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl2.applicationCode.ediResults') and (EPROEDIResultTypeCodes contains vars.vTransHeaderInfo.DataTypeCode) ) "EPRO_EDIResults_" ++ vars.vTransHeaderInfo.DataTypeCode
else if ( vars.vTransHeaderInfo.ApplicationIdCode == Mule::p('gitp.header.inbound.papvntl2.applicationCode.arStatements') and vars.vTransHeaderInfo.DataTypeCode == Mule::p('gitp.header.inbound.papvntl2.dataTypeCode.arStatements') ) "CMS_ARStatements_" ++ vars.vTransHeaderInfo.DataTypeCode
else "invalidInterface"