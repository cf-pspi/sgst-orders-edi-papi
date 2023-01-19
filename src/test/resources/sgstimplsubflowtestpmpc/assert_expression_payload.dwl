%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "statusCode": 200,
  "statusMessage": "Processing of File is completed",
  "correlationID": "21a39ec5-d857-4416-8466-dcc1d4ca774e"
})