<?php
declare(strict_types=1);

// EvaEmailVerification SDK utility: result_headers

class EvaEmailVerificationResultHeaders
{
    public static function call(EvaEmailVerificationContext $ctx): ?EvaEmailVerificationResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
