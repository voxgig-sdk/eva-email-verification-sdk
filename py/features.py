# EvaEmailVerification SDK feature factory

from feature.base_feature import EvaEmailVerificationBaseFeature
from feature.test_feature import EvaEmailVerificationTestFeature


def _make_feature(name):
    features = {
        "base": lambda: EvaEmailVerificationBaseFeature(),
        "test": lambda: EvaEmailVerificationTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
