// Typed models for the EvaEmailVerification SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Email {
  disposable?: boolean
  domain?: string
  email?: string
  free_provider?: boolean
  mx_record?: boolean
  role_account?: boolean
  smtp_check?: boolean
  status?: string
}

export type EmailLoadMatch = Partial<Email>

