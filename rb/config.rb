# EvaEmailVerification SDK configuration

module EvaEmailVerificationConfig
  def self.make_config
    {
      "main" => {
        "name" => "EvaEmailVerification",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://api.eva.pingutil.com",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "email" => {},
        },
      },
      "entity" => {
        "email" => {
          "fields" => [
            {
              "active" => true,
              "name" => "disposable",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "domain",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "email",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "free_provider",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "mx_record",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "role_account",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "smtp_check",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "status",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 7,
            },
          ],
          "name" => "email",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "example" => "user@example.com",
                        "kind" => "query",
                        "name" => "email",
                        "orig" => "email",
                        "reqd" => true,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "method" => "GET",
                  "orig" => "/email",
                  "parts" => [
                    "email",
                  ],
                  "select" => {
                    "exist" => [
                      "email",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "load",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    EvaEmailVerificationFeatures.make_feature(name)
  end
end
