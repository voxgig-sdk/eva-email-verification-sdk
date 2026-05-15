<?php
declare(strict_types=1);

// EvaEmailVerification SDK utility: feature_add

class EvaEmailVerificationFeatureAdd
{
    public static function call(EvaEmailVerificationContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
