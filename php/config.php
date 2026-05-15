<?php
declare(strict_types=1);

// EvaEmailVerification SDK configuration

class EvaEmailVerificationConfig
{
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
                "auth" => [
                    "prefix" => "Bearer",
                ],
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
              'req' => false,
              'type' => '`$BOOLEAN`',
              'active' => true,
              'index$' => 0,
            ],
            [
              'name' => 'domain',
              'req' => false,
              'type' => '`$STRING`',
              'active' => true,
              'index$' => 1,
            ],
            [
              'name' => 'email',
              'req' => false,
              'type' => '`$STRING`',
              'active' => true,
              'index$' => 2,
            ],
            [
              'name' => 'free_provider',
              'req' => false,
              'type' => '`$BOOLEAN`',
              'active' => true,
              'index$' => 3,
            ],
            [
              'name' => 'mx_record',
              'req' => false,
              'type' => '`$BOOLEAN`',
              'active' => true,
              'index$' => 4,
            ],
            [
              'name' => 'role_account',
              'req' => false,
              'type' => '`$BOOLEAN`',
              'active' => true,
              'index$' => 5,
            ],
            [
              'name' => 'smtp_check',
              'req' => false,
              'type' => '`$BOOLEAN`',
              'active' => true,
              'index$' => 6,
            ],
            [
              'name' => 'status',
              'req' => false,
              'type' => '`$STRING`',
              'active' => true,
              'index$' => 7,
            ],
          ],
          'name' => 'email',
          'op' => [
            'load' => [
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
                        'active' => true,
                      ],
                    ],
                  ],
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
                  'active' => true,
                  'index$' => 0,
                ],
              ],
              'input' => 'data',
              'key$' => 'load',
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
