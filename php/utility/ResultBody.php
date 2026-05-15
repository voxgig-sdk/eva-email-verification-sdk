<?php
declare(strict_types=1);

// EvaEmailVerification SDK utility: result_body

class EvaEmailVerificationResultBody
{
    public static function call(EvaEmailVerificationContext $ctx): ?EvaEmailVerificationResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
