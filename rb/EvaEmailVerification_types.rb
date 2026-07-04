# frozen_string_literal: true

# Typed models for the EvaEmailVerification SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Email entity data model.
#
# @!attribute [rw] disposable
#   @return [Boolean, nil]
#
# @!attribute [rw] domain
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] free_provider
#   @return [Boolean, nil]
#
# @!attribute [rw] mx_record
#   @return [Boolean, nil]
#
# @!attribute [rw] role_account
#   @return [Boolean, nil]
#
# @!attribute [rw] smtp_check
#   @return [Boolean, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
Email = Struct.new(
  :disposable,
  :domain,
  :email,
  :free_provider,
  :mx_record,
  :role_account,
  :smtp_check,
  :status,
  keyword_init: true
)

# Match filter for Email#load (any subset of Email fields).
#
# @!attribute [rw] disposable
#   @return [Boolean, nil]
#
# @!attribute [rw] domain
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] free_provider
#   @return [Boolean, nil]
#
# @!attribute [rw] mx_record
#   @return [Boolean, nil]
#
# @!attribute [rw] role_account
#   @return [Boolean, nil]
#
# @!attribute [rw] smtp_check
#   @return [Boolean, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
EmailLoadMatch = Struct.new(
  :disposable,
  :domain,
  :email,
  :free_provider,
  :mx_record,
  :role_account,
  :smtp_check,
  :status,
  keyword_init: true
)

