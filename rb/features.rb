# EvaEmailVerification SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module EvaEmailVerificationFeatures
  def self.make_feature(name)
    case name
    when "base"
      EvaEmailVerificationBaseFeature.new
    when "test"
      EvaEmailVerificationTestFeature.new
    else
      EvaEmailVerificationBaseFeature.new
    end
  end
end
