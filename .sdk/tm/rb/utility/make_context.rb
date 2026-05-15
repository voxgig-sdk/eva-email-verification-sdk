# EvaEmailVerification SDK utility: make_context
require_relative '../core/context'
module EvaEmailVerificationUtilities
  MakeContext = ->(ctxmap, basectx) {
    EvaEmailVerificationContext.new(ctxmap, basectx)
  }
end
