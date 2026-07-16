<?php
declare(strict_types=1);

// EvaEmailVerification SDK base feature

class EvaEmailVerificationBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(EvaEmailVerificationContext $ctx, array $options): void {}
    public function PostConstruct(EvaEmailVerificationContext $ctx): void {}
    public function PostConstructEntity(EvaEmailVerificationContext $ctx): void {}
    public function SetData(EvaEmailVerificationContext $ctx): void {}
    public function GetData(EvaEmailVerificationContext $ctx): void {}
    public function GetMatch(EvaEmailVerificationContext $ctx): void {}
    public function SetMatch(EvaEmailVerificationContext $ctx): void {}
    public function PrePoint(EvaEmailVerificationContext $ctx): void {}
    public function PreSpec(EvaEmailVerificationContext $ctx): void {}
    public function PreRequest(EvaEmailVerificationContext $ctx): void {}
    public function PreResponse(EvaEmailVerificationContext $ctx): void {}
    public function PreResult(EvaEmailVerificationContext $ctx): void {}
    public function PreDone(EvaEmailVerificationContext $ctx): void {}
    public function PreUnexpected(EvaEmailVerificationContext $ctx): void {}
}
