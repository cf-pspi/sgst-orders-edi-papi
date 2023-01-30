%dw 2.0
import * from dw::core::Strings
output application/java
---
leftPad(vars.counter,5,0) ++ "_" ++ vars.TransactionID