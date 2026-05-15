# EvaEmailVerification TypeScript SDK Reference

Complete API reference for the EvaEmailVerification TypeScript SDK.


## EvaEmailVerificationSDK

### Constructor

```ts
new EvaEmailVerificationSDK(options?: object)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `object` | SDK configuration options. |
| `options.apikey` | `string` | API key for authentication. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `object` | Custom headers for all requests. |
| `options.feature` | `object` | Feature configuration. |
| `options.system` | `object` | System overrides (e.g. custom fetch). |


### Static Methods

#### `EvaEmailVerificationSDK.test(testopts?, sdkopts?)`

Create a test client with mock features active.

```ts
const client = EvaEmailVerificationSDK.test()
```

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `testopts` | `object` | Test feature options. |
| `sdkopts` | `object` | Additional SDK options merged with test defaults. |

**Returns:** `EvaEmailVerificationSDK` instance in test mode.


### Instance Methods

#### `Email(data?: object)`

Create a new `Email` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `EmailEntity` instance.

#### `options()`

Return a deep copy of the current SDK options.

**Returns:** `object`

#### `utility()`

Return a copy of the SDK utility object.

**Returns:** `object`

#### `direct(fetchargs?: object)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `GET`). |
| `fetchargs.params` | `object` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `object` | Query string parameters. |
| `fetchargs.headers` | `object` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (objects are JSON-serialized). |
| `fetchargs.ctrl` | `object` | Control options (e.g. `{ explain: true }`). |

**Returns:** `Promise<{ ok, status, headers, data } | Error>`

#### `prepare(fetchargs?: object)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `Promise<{ url, method, headers, body } | Error>`

#### `tester(testopts?, sdkopts?)`

Alias for `EvaEmailVerificationSDK.test()`.

**Returns:** `EvaEmailVerificationSDK` instance in test mode.


---

## EmailEntity

```ts
const email = client.Email()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `disposable` | ``$BOOLEAN`` | No |  |
| `domain` | ``$STRING`` | No |  |
| `email` | ``$STRING`` | No |  |
| `free_provider` | ``$BOOLEAN`` | No |  |
| `mx_record` | ``$BOOLEAN`` | No |  |
| `role_account` | ``$BOOLEAN`` | No |  |
| `smtp_check` | ``$BOOLEAN`` | No |  |
| `status` | ``$STRING`` | No |  |

### Operations

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.Email().load({ id: 'email_id' })
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `EmailEntity` instance with the same client and
options.

#### `client()`

Return the parent `EvaEmailVerificationSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ts
const client = new EvaEmailVerificationSDK({
  feature: {
    test: { active: true },
  }
})
```

