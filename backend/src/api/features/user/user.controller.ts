import express from 'express'
import * as functions from 'firebase-functions'
import { z } from 'zod'

import { appSendSuccess } from '../../../utils/app/common'
import {
  appMiddleware,
  PayloadType,
} from '../../../utils/app/middleware/middleware'
import { appSendError } from '../../../utils/error/error'

import { CompleteSetupParams, DeleteUserParams } from './user.schema'
import { userService } from './user.service'

const app = express()
app.use([appMiddleware.checkMethod(['PUT', 'DELETE'])])

// ユーザーアカウント・データを全削除
app.delete(
  '/:userId',
  [
    appMiddleware.verifyToken,
    appMiddleware.checkPayload(DeleteUserParams, PayloadType.params),
  ],
  async (
    req: express.AppRequest<{ params: typeof DeleteUserParams }>,
    res: express.Response,
  ) => {
    try {
      await userService.deleteUser(req.params)
      return appSendSuccess({
        res,
        statusCode: 200,
        message: `Successfully deleted ${req.params.userId}`,
      })
    } catch (error) {
      return appSendError({
        res,
        error,
      })
    }
  },
)

// Description
app.put(
  '/setup/:userId',
  [
    appMiddleware.verifyToken,
    appMiddleware.checkPayload(CompleteSetupParams, PayloadType.params),
  ],
  async (
    req: express.AppRequest<{ params: z.infer<typeof CompleteSetupParams> }>,
    res: express.Response,
  ) => {
    try {
      await userService.completeSetup(req.params)
      return appSendSuccess({
        res,
        statusCode: 204,
      })
    } catch (error) {
      return appSendError({
        res,
        error,
      })
    }
  },
)

export const user = functions.region('asia-northeast1').https.onRequest(app)
