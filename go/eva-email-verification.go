package voxgigevaemailverificationsdk

import (
	"github.com/voxgig-sdk/eva-email-verification-sdk/core"
	"github.com/voxgig-sdk/eva-email-verification-sdk/entity"
	"github.com/voxgig-sdk/eva-email-verification-sdk/feature"
	_ "github.com/voxgig-sdk/eva-email-verification-sdk/utility"
)

// Type aliases preserve external API.
type EvaEmailVerificationSDK = core.EvaEmailVerificationSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type EvaEmailVerificationEntity = core.EvaEmailVerificationEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type EvaEmailVerificationError = core.EvaEmailVerificationError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewEmailEntityFunc = func(client *core.EvaEmailVerificationSDK, entopts map[string]any) core.EvaEmailVerificationEntity {
		return entity.NewEmailEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewEvaEmailVerificationSDK = core.NewEvaEmailVerificationSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
