# EvaEmailVerification SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

EvaEmailVerificationUtility.registrar = ->(u) {
  u.clean = EvaEmailVerificationUtilities::Clean
  u.done = EvaEmailVerificationUtilities::Done
  u.make_error = EvaEmailVerificationUtilities::MakeError
  u.feature_add = EvaEmailVerificationUtilities::FeatureAdd
  u.feature_hook = EvaEmailVerificationUtilities::FeatureHook
  u.feature_init = EvaEmailVerificationUtilities::FeatureInit
  u.fetcher = EvaEmailVerificationUtilities::Fetcher
  u.make_fetch_def = EvaEmailVerificationUtilities::MakeFetchDef
  u.make_context = EvaEmailVerificationUtilities::MakeContext
  u.make_options = EvaEmailVerificationUtilities::MakeOptions
  u.make_request = EvaEmailVerificationUtilities::MakeRequest
  u.make_response = EvaEmailVerificationUtilities::MakeResponse
  u.make_result = EvaEmailVerificationUtilities::MakeResult
  u.make_point = EvaEmailVerificationUtilities::MakePoint
  u.make_spec = EvaEmailVerificationUtilities::MakeSpec
  u.make_url = EvaEmailVerificationUtilities::MakeUrl
  u.param = EvaEmailVerificationUtilities::Param
  u.prepare_auth = EvaEmailVerificationUtilities::PrepareAuth
  u.prepare_body = EvaEmailVerificationUtilities::PrepareBody
  u.prepare_headers = EvaEmailVerificationUtilities::PrepareHeaders
  u.prepare_method = EvaEmailVerificationUtilities::PrepareMethod
  u.prepare_params = EvaEmailVerificationUtilities::PrepareParams
  u.prepare_path = EvaEmailVerificationUtilities::PreparePath
  u.prepare_query = EvaEmailVerificationUtilities::PrepareQuery
  u.result_basic = EvaEmailVerificationUtilities::ResultBasic
  u.result_body = EvaEmailVerificationUtilities::ResultBody
  u.result_headers = EvaEmailVerificationUtilities::ResultHeaders
  u.transform_request = EvaEmailVerificationUtilities::TransformRequest
  u.transform_response = EvaEmailVerificationUtilities::TransformResponse
}
