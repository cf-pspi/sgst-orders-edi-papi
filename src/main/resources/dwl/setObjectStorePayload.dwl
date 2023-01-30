%dw 2.0
import * from dw::core::Strings
output application/java
var trim=if (vars.fileDetails.externalSystem == "EPRO") Mule::p("sap.outbound.trim.length.epro")
else if (vars.fileDetails.externalSystem == "IPS") Mule::p("sap.outbound.trim.length.ips")
else if (vars.fileDetails.externalSystem == "ECITA") Mule::p("sap.outbound.trim.length.ecita")
else if (vars.fileDetails.externalSystem == "SALES_EDI") Mule::p("sap.outbound.trim.length.salesEDI")
else if (vars.fileDetails.externalSystem == "CMS") Mule::p("sap.outbound.trim.length.cms")
else "InvalidExternalSystem"
---
(payload map ((rightPad($, trim)))[0 to trim-1]) joinBy "\n"