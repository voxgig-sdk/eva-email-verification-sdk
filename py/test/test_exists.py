# ProjectName SDK exists test

import pytest
from evaemailverification_sdk import EvaEmailVerificationSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = EvaEmailVerificationSDK.test(None, None)
        assert testsdk is not None
