%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "statusCode": 200,
  "statusMessage": "Processing of File is completed",
  "correlationID": "6384f19a-45d9-4e77-a1b4-51aa96625c84"
})