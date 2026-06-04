# EvaEmailVerification SDK

Check an email address for valid syntax, disposable domains, and deliverable MX records

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About EVA Email Verification

EVA (Email Verification API) is a free email-validation service published by [LoginRadius](https://www.loginradius.com/) and hosted at `api.eva.pingutil.com`. It was released as a developer-community give-back tool and exposes a single GET endpoint that takes an `email` query parameter.

What you get from the API:
- `email_address` and `domain` parsed from the supplied address
- `valid_syntax` — whether the address matches standard email syntax
- `disposable` — whether the domain is on a list of 4,500+ disposable email providers
- `deliverable` — whether the domain has valid MX records

Responses are wrapped in a `{ status, data }` envelope. The service does not require an API key and has no published rate limits. Note that the upstream service has been intermittently unreachable; consult the homepage before relying on it in production.

## Try it

**TypeScript**
```bash
npm install eva-email-verification
```

**Python**
```bash
pip install eva-email-verification-sdk
```

**PHP**
```bash
composer require voxgig/eva-email-verification-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/eva-email-verification-sdk/go
```

**Ruby**
```bash
gem install eva-email-verification-sdk
```

**Lua**
```bash
luarocks install eva-email-verification-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { EvaEmailVerificationSDK } from 'eva-email-verification'

const client = new EvaEmailVerificationSDK({})

```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o eva-email-verification-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "eva-email-verification": {
      "command": "/abs/path/to/eva-email-verification-mcp"
    }
  }
}
```

## Entities

The API exposes one entity:

| Entity | Description | API path |
| --- | --- | --- |
| **Email** | An email-verification result for a single address, returned by `GET /email?email=<address>` with syntax, disposable, and deliverability flags. | `/email` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from evaemailverification_sdk import EvaEmailVerificationSDK

client = EvaEmailVerificationSDK({})


# Load a specific email
email, err = client.Email(None).load(
    {"id": "example_id"}, None
)
```

### PHP

```php
<?php
require_once 'evaemailverification_sdk.php';

$client = new EvaEmailVerificationSDK([]);


// Load a specific email
[$email, $err] = $client->Email(null)->load(
    ["id" => "example_id"], null
);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/eva-email-verification-sdk/go"

client := sdk.NewEvaEmailVerificationSDK(map[string]any{})

```

### Ruby

```ruby
require_relative "EvaEmailVerification_sdk"

client = EvaEmailVerificationSDK.new({})


# Load a specific email
email, err = client.Email(nil).load(
  { "id" => "example_id" }, nil
)
```

### Lua

```lua
local sdk = require("eva-email-verification_sdk")

local client = sdk.new({})


-- Load a specific email
local email, err = client:Email(nil):load(
  { id = "example_id" }, nil
)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = EvaEmailVerificationSDK.test()
const result = await client.Email().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = EvaEmailVerificationSDK.test(None, None)
result, err = client.Email(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = EvaEmailVerificationSDK::test(null, null);
[$result, $err] = $client->Email(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.Email(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = EvaEmailVerificationSDK.test(nil, nil)
result, err = client.Email(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:Email(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the EVA Email Verification

- Upstream: [https://eva.pingutil.com/](https://eva.pingutil.com/)

- No explicit licence published on the EVA homepage.
- Provided free of charge by [LoginRadius](https://www.loginradius.com/) as a community tool.
- No documented quotas or attribution requirements; use at your own risk.

---

Generated from the EVA Email Verification OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
