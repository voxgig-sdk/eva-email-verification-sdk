# EvaEmailVerification SDK configuration


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
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
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
            "type": "`$BOOLEAN`",
          },
          {
            "name": "domain",
            "type": "`$STRING`",
          },
          {
            "name": "email",
            "type": "`$STRING`",
          },
          {
            "name": "free_provider",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "mx_records",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "role_account",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "smtp_check",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "status",
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
                "parts": [
                  "email",
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
