-- ProjectName SDK exists test

local sdk = require("eva-email-verification_sdk")

describe("EvaEmailVerificationSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
