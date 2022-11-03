import express from 'express'
import { z } from 'zod'

import { appSendError, HTTP400Error, HTTP405Error } from '../../error/error'
import { AppErrorCode } from '../../error/error_app_status_code'

import { appMiddlewareModule } from './middleware.module'
import { MiddlewareOptions } from './middleware.type'

const { checkAuthorization, checkBearer, checkToken } = appMiddlewareModule

export const PayloadType = {
  body: Symbol('body'),
  params: Symbol('params'),
  query: Symbol('query'),
} as const

export const appMiddleware = {
  /**
   * トークンの検証
   */
  async verifyToken(
    req: express.Request,
    res: express.Response,
    next: express.NextFunction,
  ) {
    try {
      const { bearer, token } = checkAuthorization(req.headers.authorization)
      checkBearer(bearer)
      await checkToken(token)

      return next()
    } catch (error) {
      return appSendError({
        res,
        error,
      })
    }
  },
  /**
   * リクエストメソッド制御
   */
  checkMethod:
    (allowRequestMethod: MiddlewareOptions | MiddlewareOptions[]) =>
    (
      req: express.Request,
      res: express.Response,
      next: express.NextFunction,
    ) => {
      try {
        if (allowRequestMethod === (req.method as MiddlewareOptions)) {
          return next()
        }
        if (allowRequestMethod.includes(req.method as MiddlewareOptions)) {
          return next()
        }

        throw new HTTP405Error({
          code: AppErrorCode.Client.methodNotAllowed,
          message: 'Request method not allowed',
        })
      } catch (error) {
        return appSendError({
          res,
          error,
        })
      }
    },
  /**
   * リクエスト構文チェック
   */
  checkPayload:
    (zObject: z.ZodTypeAny, payloadType = PayloadType.body) =>
    (
      req: express.Request,
      res: express.Response,
      next: express.NextFunction,
    ) => {
      try {
        switch (payloadType) {
          case PayloadType.body:
            zObject.parse(req.body)
            break
          case PayloadType.params:
            zObject.parse(req.params)
            break
          case PayloadType.query:
            zObject.parse(req.query)
            break
        }

        return next()
      } catch (error) {
        return appSendError({
          res,
          error: new HTTP400Error({
            code: AppErrorCode.Client.invalidRequest,
            message: 'invalid request',
            error,
          }),
        })
      }
    },
}
