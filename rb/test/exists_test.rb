# EvaEmailVerification SDK exists test

require "minitest/autorun"
require_relative "../EvaEmailVerification_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = EvaEmailVerificationSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
