import admin from 'firebase-admin'

import { HTTP400Error, HTTP403Error } from '../../error/error'
import { AppErrorCode } from '../../error/error_app_status_code'

const auth = admin.auth()

export const appMiddlewareModule = {
  /**
   * ヘッダーにAuthorizationがない
   */
  checkAuthorization: (authorization?: string) => {
    if (!authorization) {
      throw new HTTP400Error({
        code: AppErrorCode.Client.notFoundAuthorization,
        message: 'Not found Authorization in headers',
      })
    }
    const [bearer, token] = authorization.split(' ')
    return { bearer, token }
  },
  /**
   * AuthorizationにBearerがない
   */
  checkBearer: (bearer: string) => {
    if (bearer !== 'Bearer') {
      throw new HTTP400Error({
        code: AppErrorCode.Client.invalidRequest,
        message: 'Header does not include Bearer',
      })
    }
    return
  },
  /**
   * トークン検証
   */
  checkToken: async (token: string) => {
    try {
      const decodedIdToken = await auth.verifyIdToken(token)
      return decodedIdToken
    } catch (error) {
      throw new HTTP403Error({
        code: AppErrorCode.Client.invalidToken,
        message: 'Token is invalid',
      })
    }
  },
}
