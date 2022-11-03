---
to: backend/src/api/features/<%= h.changeCase.snake(featureNameEn) %>/<%= h.changeCase.snake(featureNameEn) %>.controller.ts
---
import express from 'express'
import * as functions from 'firebase-functions'
import { appSendError } from '../../utils/app/error/error'
import { appSendSuccess } from '../../utils/app/common'
import { AllowRequestMethod } from '../../utils/app/middleware/middleware.type'
import { <%= featureNameEn %>Service } from './<%= h.changeCase.snake(featureNameEn) %>.service'
import { <%= featureNameEn %>BodySchema } from './<%= h.changeCase.snake(featureNameEn) %>.schema'
import {
  appMiddleware,
  PayloadType,
} from '../../utils/app/middleware/middleware'

const app = express()
const { checkMethod, verifyToken, checkPayload } = appMiddleware

// Description
app.post(
  '/xxxxx',
  [
    verifyToken,
  ],
  async (
    req: express.Request,
    res: express.Response,
  ) => {
    try {
      return appSendSuccess({
        res,
        message: 'xxxxx',
      })
    } catch (error) {
      return appSendError({
        res,
        error,
      })
    }
  },
)

export const <%= h.changeCase.snake(featureNameEn) %> = functions
  .region('asia-northeast1')
  .https.onRequest(app)
