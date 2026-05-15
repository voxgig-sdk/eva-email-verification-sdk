# EvaEmailVerification SDK utility: feature_add
module EvaEmailVerificationUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
