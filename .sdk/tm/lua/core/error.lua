-- EvaEmailVerification SDK error

local EvaEmailVerificationError = {}
EvaEmailVerificationError.__index = EvaEmailVerificationError


function EvaEmailVerificationError.new(code, msg, ctx)
  local self = setmetatable({}, EvaEmailVerificationError)
  self.is_sdk_error = true
  self.sdk = "EvaEmailVerification"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function EvaEmailVerificationError:error()
  return self.msg
end


function EvaEmailVerificationError:__tostring()
  return self.msg
end


return EvaEmailVerificationError
