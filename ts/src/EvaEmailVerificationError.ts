
import { Context } from './Context'


class EvaEmailVerificationError extends Error {

  isEvaEmailVerificationError = true

  sdk = 'EvaEmailVerification'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  EvaEmailVerificationError
}

