# EvaEmailVerification SDK configuration

module EvaEmailVerificationConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
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
              "name" => "disposable",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "domain",
              "type" => "`$STRING`",
            },
            {
              "name" => "email",
              "type" => "`$STRING`",
            },
            {
              "name" => "free_provider",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "mx_records",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "role_account",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "smtp_check",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "status",
              "type" => "`$STRING`",
            },
          ],
          "name" => "email",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {
                    "query" => [
                      {
                        "example" => "user@example.com",
                        "kind" => "query",
                        "name" => "email",
                        "orig" => "email",
                        "reqd" => true,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
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
                },
              ],
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
