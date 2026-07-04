# Typed models for the EvaEmailVerification SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Email:
    disposable: Optional[bool] = None
    domain: Optional[str] = None
    email: Optional[str] = None
    free_provider: Optional[bool] = None
    mx_record: Optional[bool] = None
    role_account: Optional[bool] = None
    smtp_check: Optional[bool] = None
    status: Optional[str] = None


@dataclass
class EmailLoadMatch:
    disposable: Optional[bool] = None
    domain: Optional[str] = None
    email: Optional[str] = None
    free_provider: Optional[bool] = None
    mx_record: Optional[bool] = None
    role_account: Optional[bool] = None
    smtp_check: Optional[bool] = None
    status: Optional[str] = None

