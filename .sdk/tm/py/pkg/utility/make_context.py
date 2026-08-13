# EvaEmailVerification SDK utility: make_context

from projectname_sdk.core.context import EvaEmailVerificationContext


def make_context_util(ctxmap, basectx):
    return EvaEmailVerificationContext(ctxmap, basectx)
