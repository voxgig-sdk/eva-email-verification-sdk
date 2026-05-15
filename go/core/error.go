package core

type EvaEmailVerificationError struct {
	IsEvaEmailVerificationError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewEvaEmailVerificationError(code string, msg string, ctx *Context) *EvaEmailVerificationError {
	return &EvaEmailVerificationError{
		IsEvaEmailVerificationError: true,
		Sdk:              "EvaEmailVerification",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *EvaEmailVerificationError) Error() string {
	return e.Msg
}
