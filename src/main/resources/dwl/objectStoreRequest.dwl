%dw 2.0
import * from dw::core::Binaries
output application/json
---
{
    "binaryValue":toBase64(payload),
    "keyId": vars.objectStoreKey,
    "valueType": "BINARY"
}