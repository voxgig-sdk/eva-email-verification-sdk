-- EvaEmailVerification SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "EvaEmailVerification",
      slug = "eva-email-verification",
      version = "0.0.1",
      target = "lua",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
      },
    },
    options = {
      base = "https://api.eva.pingutil.com",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["email"] = {},
      },
    },
    entity = {
      ["email"] = {
        ["fields"] = {
          {
            ["name"] = "disposable",
            ["short"] = "Whether the email is from a disposable email provider",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "domain",
            ["short"] = "The domain part of the email address",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "email",
            ["short"] = "The email address that was verified",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "free_provider",
            ["short"] = "Whether the email is from a free email provider",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "mx_records",
            ["short"] = "Whether MX records exist for the domain",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "role_account",
            ["short"] = "Whether the email appears to be a role-based account",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "smtp_check",
            ["short"] = "Whether SMTP check was successful",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "status",
            ["short"] = "Verification status",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "email",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["example"] = "user@example.com",
                      ["kind"] = "query",
                      ["name"] = "email",
                      ["orig"] = "email",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/email",
                ["parts"] = {
                  "email",
                },
                ["select"] = {
                  ["exist"] = {
                    "email",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
