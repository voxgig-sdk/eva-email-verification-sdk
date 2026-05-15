# EvaEmailVerification SDK utility: make_context

from core.context import EvaEmailVerificationContext


def make_context_util(ctxmap, basectx):
    return EvaEmailVerificationContext(ctxmap, basectx)
