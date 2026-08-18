-- EvaEmailVerification SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "EvaEmailVerification",
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
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "domain",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "email",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "free_provider",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "mx_records",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "role_account",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "smtp_check",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "status",
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
