# EvaEmailVerification SDK configuration


def make_config():
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
            "auth": {
                "prefix": "Bearer",
            },
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
            "req": False,
            "type": "`$BOOLEAN`",
            "active": True,
            "index$": 0,
          },
          {
            "name": "domain",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 1,
          },
          {
            "name": "email",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 2,
          },
          {
            "name": "free_provider",
            "req": False,
            "type": "`$BOOLEAN`",
            "active": True,
            "index$": 3,
          },
          {
            "name": "mx_record",
            "req": False,
            "type": "`$BOOLEAN`",
            "active": True,
            "index$": 4,
          },
          {
            "name": "role_account",
            "req": False,
            "type": "`$BOOLEAN`",
            "active": True,
            "index$": 5,
          },
          {
            "name": "smtp_check",
            "req": False,
            "type": "`$BOOLEAN`",
            "active": True,
            "index$": 6,
          },
          {
            "name": "status",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 7,
          },
        ],
        "name": "email",
        "op": {
          "load": {
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
                      "active": True,
                    },
                  ],
                },
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
                "active": True,
                "index$": 0,
              },
            ],
            "input": "data",
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
