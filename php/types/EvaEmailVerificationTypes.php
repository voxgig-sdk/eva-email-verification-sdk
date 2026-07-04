<?php
declare(strict_types=1);

// Typed models for the EvaEmailVerification SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Email entity data model. */
class Email
{
    public ?bool $disposable = null;
    public ?string $domain = null;
    public ?string $email = null;
    public ?bool $free_provider = null;
    public ?bool $mx_record = null;
    public ?bool $role_account = null;
    public ?bool $smtp_check = null;
    public ?string $status = null;
}

/** Match filter for Email#load (any subset of Email fields). */
class EmailLoadMatch
{
    public ?bool $disposable = null;
    public ?string $domain = null;
    public ?string $email = null;
    public ?bool $free_provider = null;
    public ?bool $mx_record = null;
    public ?bool $role_account = null;
    public ?bool $smtp_check = null;
    public ?string $status = null;
}

