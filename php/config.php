<?php
declare(strict_types=1);

// EvaEmailVerification SDK configuration

class EvaEmailVerificationConfig
{
    /** @var array<string,mixed>|null */
    private static ?array $shared_config = null;

    /**
     * Return the process-wide config, built once on first use. The SDK reads
     * the config on every request and never writes to it, so one instance is
     * shared by every client rather than rebuilt per client.
     *
     * PHP arrays are copy-on-write, so callers that do mutate the result get
     * their own copy and cannot disturb the shared one.
     */
    public static function shared_config(): array
    {
        if (self::$shared_config === null) {
            self::$shared_config = self::make_config();
        }
        return self::$shared_config;
    }

    /**
     * Build a fresh, fully materialised config array. Every call rebuilds the
     * whole structure, so prefer shared_config unless you need a private copy.
     */
    public static function make_config(): array
    {
        return [
            "main" => [
                "name" => "EvaEmailVerification",
            ],
            "feature" => [
                "test" => [
          'options' => [
            'active' => false,
          ],
        ],
            ],
            "options" => [
                "base" => "https://api.eva.pingutil.com",
                "headers" => [
          'content-type' => 'application/json',
        ],
                "entity" => [
                    "email" => [],
                ],
            ],
            "entity" => [
        'email' => [
          'fields' => [
            [
              'name' => 'disposable',
              'type' => '`$BOOLEAN`',
            ],
            [
              'name' => 'domain',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'email',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'free_provider',
              'type' => '`$BOOLEAN`',
            ],
            [
              'name' => 'mx_records',
              'type' => '`$BOOLEAN`',
            ],
            [
              'name' => 'role_account',
              'type' => '`$BOOLEAN`',
            ],
            [
              'name' => 'smtp_check',
              'type' => '`$BOOLEAN`',
            ],
            [
              'name' => 'status',
              'type' => '`$STRING`',
            ],
          ],
          'name' => 'email',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'args' => [
                    'query' => [
                      [
                        'example' => 'user@example.com',
                        'kind' => 'query',
                        'name' => 'email',
                        'orig' => 'email',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/email',
                  'parts' => [
                    'email',
                  ],
                  'select' => [
                    'exist' => [
                      'email',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                ],
              ],
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
      ],
        ];
    }


    public static function make_feature(string $name)
    {
        require_once __DIR__ . '/features.php';
        return EvaEmailVerificationFeatures::make_feature($name);
    }
}
