# EvaEmailVerification SDK configuration


# The sekreto plugin DEFINITIONS the model selected per feature, imported
# above by name from the modules the catalogue's active `plugin.def`
# entries declare. Handed to each feature (secrets builds its Sekreto
# with them): a provider kind not listed here is unknown to that SDK.
FEATURE_PLUGINS = {
}


_shared_config = None


def shared_config():
    """Return the process-wide config, built once on first use.

    The SDK reads the config on every request and never writes to it, so one
    instance is shared by every client rather than rebuilt per client.

    The returned dict is shared: treat it as read-only. Callers that need to
    mutate should use make_config, which always returns a fresh copy.
    """
    global _shared_config
    if _shared_config is None:
        _shared_config = make_config()
    return _shared_config


def make_config():
    """Build a fresh, fully materialised config dict.

    Every call rebuilds the whole structure, so prefer shared_config unless
    you need a private copy you intend to mutate.
    """
    return {
        "main": {
            "name": "EvaEmailVerification",
            "slug": "eva-email-verification",
            "version": "0.0.1",
            "target": "py",
        },
        "feature": {
            "ratelimit": {
        "options": {
          "active": False,
          "burst": 5,
          "rate": 5,
        },
        "optspec": {
          "now": "`$FUNCTION`",
          "sleep": "`$FUNCTION`",
        },
        "strict": False,
        "transport": "wrap",
      },
            "retry": {
        "options": {
          "active": False,
          "factor": 2,
          "maxDelay": 2000,
          "minDelay": 50,
          "retries": 2,
          "statuses": [
            408,
            425,
            429,
            500,
            502,
            503,
            504,
          ],
        },
        "optspec": {
          "jitter": "`$BOOLEAN`",
          "sleep": "`$FUNCTION`",
        },
        "strict": False,
        "transport": "wrap",
      },
            "test": {
        "options": {
          "active": False,
        },
        "optspec": {
          "entity": "`$MAP`",
          "net": "`$MAP`",
        },
        "strict": False,
        "transport": "base",
      },
            "timeout": {
        "options": {
          "active": False,
          "ms": 30000,
        },
        "optspec": {
          "clearTimer": "`$FUNCTION`",
          "setTimer": "`$FUNCTION`",
        },
        "strict": False,
        "transport": "wrap",
      },
        },
        "options": {
            "base": "https://api.eva.pingutil.com",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "email": {},
            },
        },
        "entity": {
      "email": {
        "fields": [
          {
            "name": "disposable",
            "short": "Whether the email is from a disposable email provider",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "domain",
            "short": "The domain part of the email address",
            "type": "`$STRING`",
          },
          {
            "format": "email",
            "name": "email",
            "short": "The email address that was verified",
            "type": "`$STRING`",
          },
          {
            "name": "free_provider",
            "short": "Whether the email is from a free email provider",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "mx_records",
            "short": "Whether MX records exist for the domain",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "role_account",
            "short": "Whether the email appears to be a role-based account",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "smtp_check",
            "short": "Whether SMTP check was successful",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "status",
            "short": "Verification status",
            "type": "`$STRING`",
          },
        ],
        "name": "email",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "args": {
                  "query": [
                    {
                      "example": "user@example.com",
                      "kind": "query",
                      "name": "email",
                      "orig": "email",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/email",
                "segments": [
                  {
                    "lit": "email",
                  },
                ],
                "select": {
                  "exist": [
                    "email",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "parts": [
                  "email",
                ],
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
