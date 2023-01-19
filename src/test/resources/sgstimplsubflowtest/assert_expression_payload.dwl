%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "statusCode": 200,
  "statusMessage": "Processing of File is completed",
  "correlationID": "ba7d4bfd-0d3d-4552-aefe-ae50c35dbdb7"
})