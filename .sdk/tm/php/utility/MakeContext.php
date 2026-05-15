<?php
declare(strict_types=1);

// EvaEmailVerification SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class EvaEmailVerificationMakeContext
{
    public static function call(array $ctxmap, ?EvaEmailVerificationContext $basectx): EvaEmailVerificationContext
    {
        return new EvaEmailVerificationContext($ctxmap, $basectx);
    }
}
