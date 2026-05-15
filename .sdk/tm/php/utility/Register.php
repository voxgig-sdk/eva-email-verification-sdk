<?php
declare(strict_types=1);

// EvaEmailVerification SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

EvaEmailVerificationUtility::setRegistrar(function (EvaEmailVerificationUtility $u): void {
    $u->clean = [EvaEmailVerificationClean::class, 'call'];
    $u->done = [EvaEmailVerificationDone::class, 'call'];
    $u->make_error = [EvaEmailVerificationMakeError::class, 'call'];
    $u->feature_add = [EvaEmailVerificationFeatureAdd::class, 'call'];
    $u->feature_hook = [EvaEmailVerificationFeatureHook::class, 'call'];
    $u->feature_init = [EvaEmailVerificationFeatureInit::class, 'call'];
    $u->fetcher = [EvaEmailVerificationFetcher::class, 'call'];
    $u->make_fetch_def = [EvaEmailVerificationMakeFetchDef::class, 'call'];
    $u->make_context = [EvaEmailVerificationMakeContext::class, 'call'];
    $u->make_options = [EvaEmailVerificationMakeOptions::class, 'call'];
    $u->make_request = [EvaEmailVerificationMakeRequest::class, 'call'];
    $u->make_response = [EvaEmailVerificationMakeResponse::class, 'call'];
    $u->make_result = [EvaEmailVerificationMakeResult::class, 'call'];
    $u->make_point = [EvaEmailVerificationMakePoint::class, 'call'];
    $u->make_spec = [EvaEmailVerificationMakeSpec::class, 'call'];
    $u->make_url = [EvaEmailVerificationMakeUrl::class, 'call'];
    $u->param = [EvaEmailVerificationParam::class, 'call'];
    $u->prepare_auth = [EvaEmailVerificationPrepareAuth::class, 'call'];
    $u->prepare_body = [EvaEmailVerificationPrepareBody::class, 'call'];
    $u->prepare_headers = [EvaEmailVerificationPrepareHeaders::class, 'call'];
    $u->prepare_method = [EvaEmailVerificationPrepareMethod::class, 'call'];
    $u->prepare_params = [EvaEmailVerificationPrepareParams::class, 'call'];
    $u->prepare_path = [EvaEmailVerificationPreparePath::class, 'call'];
    $u->prepare_query = [EvaEmailVerificationPrepareQuery::class, 'call'];
    $u->result_basic = [EvaEmailVerificationResultBasic::class, 'call'];
    $u->result_body = [EvaEmailVerificationResultBody::class, 'call'];
    $u->result_headers = [EvaEmailVerificationResultHeaders::class, 'call'];
    $u->transform_request = [EvaEmailVerificationTransformRequest::class, 'call'];
    $u->transform_response = [EvaEmailVerificationTransformResponse::class, 'call'];
});
