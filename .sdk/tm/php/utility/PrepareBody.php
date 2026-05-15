<?php
declare(strict_types=1);

// EvaEmailVerification SDK utility: prepare_body

class EvaEmailVerificationPrepareBody
{
    public static function call(EvaEmailVerificationContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
