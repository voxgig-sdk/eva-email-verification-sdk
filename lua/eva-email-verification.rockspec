package = "voxgig-sdk-eva-email-verification"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/eva-email-verification-sdk.git"
}
description = {
  summary = "EvaEmailVerification SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["eva-email-verification_sdk"] = "eva-email-verification_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
