package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewEmailEntityFunc func(client *EvaEmailVerificationSDK, entopts map[string]any) EvaEmailVerificationEntity

