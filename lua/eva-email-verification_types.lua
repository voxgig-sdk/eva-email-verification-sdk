-- Typed models for the EvaEmailVerification SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Email
---@field disposable? boolean
---@field domain? string
---@field email? string
---@field free_provider? boolean
---@field mx_record? boolean
---@field role_account? boolean
---@field smtp_check? boolean
---@field status? string

---@class EmailLoadMatch
---@field disposable? boolean
---@field domain? string
---@field email? string
---@field free_provider? boolean
---@field mx_record? boolean
---@field role_account? boolean
---@field smtp_check? boolean
---@field status? string

local M = {}

return M
