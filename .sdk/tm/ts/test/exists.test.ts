
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { EvaEmailVerificationSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await EvaEmailVerificationSDK.test()
    equal(null !== testsdk, true)
  })

})
