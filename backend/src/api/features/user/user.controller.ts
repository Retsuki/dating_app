import express from 'express'
import * as functions from 'firebase-functions'
import { z } from 'zod'

import { appSendSuccess } from '../../../utils/app/common'
import {
  appMiddleware,
  PayloadType,
} from '../../../utils/app/middleware/middleware'
import { appSendError } from '../../../utils/error/error'

import { CompleteSetupParams } from './user.schema'
import { userService } from './user.service'

const app = express()
app.use([appMiddleware.checkMethod('PUT')])

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
