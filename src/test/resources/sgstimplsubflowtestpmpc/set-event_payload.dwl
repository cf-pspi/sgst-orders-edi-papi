{
  "parts": {
    "EDIMsgHeader": {
      "headers": {
        "Content-Disposition": {
          "name": "EDIMsgHeader",
          "subtype": "form-data"
        }
      },
      "content": "eyAic3Vic2lkaWFyeSI6ICJQTVBDIiwgImZsYXRGaWxlTmFtZSI6ICJzYW1wbGUiLCAiZmxhdEZpbGVGb3JtYXQiOiAiRklYRURfV0lEVEgiLCJleHRlcm5hbFN5c3RlbSI6ICJFQ0lUQSIsImZsYXRGaWxlRXh0ZW5zaW9uIjogIi5kYXQifQ==" as Binary {base: "64"}
    },
    "File": {
      "headers": {
        "Content-Disposition": {
          "name": "File",
          "filename": "test-file.zip",
          "subtype": "form-data"
        },
        "Content-Type": "application/zip"
      },
      "content": "UEsDBBQACAAIADhvMFYAAAAAAAAAACgFAAAJACAAdGVzdC1maWxlVVQNAAfdV8Vj3VfFY91XxWN1eAsAAQT3AQAABBQAAAArSS0uMdQpAZJGYNIYTJpwlYyKj4qPio+Kj4qDxQFQSwcI6FqAIx4AAAAoBQAAUEsBAhQDFAAIAAgAOG8wVuhagCMeAAAAKAUAAAkAIAAAAAAAAAAAAKSBAAAAAHRlc3QtZmlsZVVUDQAH3VfFY91XxWPdV8VjdXgLAAEE9wEAAAQUAAAAUEsFBgAAAAABAAEAVwAAAHUAAAAAAA==" as Binary {base: "64"}
    }
  }
}