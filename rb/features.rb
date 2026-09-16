# EvaEmailVerification SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module EvaEmailVerificationFeatures
  def self.make_feature(name)
    case name
    when "base"
      EvaEmailVerificationBaseFeature.new
    when "ratelimit"
      EvaEmailVerificationRatelimitFeature.new
    when "retry"
      EvaEmailVerificationRetryFeature.new
    when "test"
      EvaEmailVerificationTestFeature.new
    when "timeout"
      EvaEmailVerificationTimeoutFeature.new
    else
      EvaEmailVerificationBaseFeature.new
    end
  end
end
