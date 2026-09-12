"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.FEATURE_PLUGINS = exports.config = void 0;
const TestFeature_1 = require("./feature/test/TestFeature");
const FEATURE_CLASS = {
    test: TestFeature_1.TestFeature,
};
// Per-feature plugin DEFINITIONS (voxgig/plugin `Definition` values), from
// the model's active plugin groups. A feature that takes a `plugins` option
// (secrets over sekreto) reads its own entry; a feature with no plugins has
// none. Named imports above make each definition statically reachable, so
// an SDK carries exactly the plugin modules its model selects — the same
// leanness the old side-effect registry imports bought, without a registry.
const FEATURE_PLUGINS = {};
exports.FEATURE_PLUGINS = FEATURE_PLUGINS;
class Config {
    makeFeature(fn) {
        const fc = FEATURE_CLASS[fn];
        const fi = new fc();
        // TODO: errors etc
        return fi;
    }
    // False for a feature added at runtime via options.extend (station's
    // adopt path) - the constructor uses this to skip makeFeature for names
    // no generated class backs.
    hasFeature(fn) {
        return null != FEATURE_CLASS[fn];
    }
    main = {
        name: 'EvaEmailVerification',
        slug: "eva-email-verification",
        version: "0.0.1",
        target: "ts",
    };
    feature = {
        test: {
            "options": {
                "active": false
            },
            "transport": "base"
        },
    };
    options = {
        base: "https://api.eva.pingutil.com",
        headers: {
            "content-type": "application/json"
        },
        entity: {
            email: {},
        }
    };
    entity = {
        "email": {
            "fields": [
                {
                    "name": "disposable",
                    "short": "Whether the email is from a disposable email provider",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "domain",
                    "short": "The domain part of the email address",
                    "type": "`$STRING`"
                },
                {
                    "format": "email",
                    "name": "email",
                    "short": "The email address that was verified",
                    "type": "`$STRING`"
                },
                {
                    "name": "free_provider",
                    "short": "Whether the email is from a free email provider",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "mx_records",
                    "short": "Whether MX records exist for the domain",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "role_account",
                    "short": "Whether the email appears to be a role-based account",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "smtp_check",
                    "short": "Whether SMTP check was successful",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "status",
                    "short": "Verification status",
                    "type": "`$STRING`"
                }
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
                                        "reqd": true,
                                        "type": "`$STRING`"
                                    }
                                ]
                            },
                            "kind": "http",
                            "method": "GET",
                            "orig": "/email",
                            "segments": [
                                {
                                    "lit": "email"
                                }
                            ],
                            "select": {
                                "exist": [
                                    "email"
                                ]
                            },
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body`"
                            },
                            "parts": [
                                "email"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        }
    };
}
const config = new Config();
exports.config = config;
//# sourceMappingURL=Config.js.map