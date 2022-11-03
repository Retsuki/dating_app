import express from 'express'

import { ErrorHttpStatusCode } from '../error/error_http_status_code'

import { Logger } from './logger'

export type ValuesOf<T> = T[keyof T]

export const unawaited = (promise: Promise<unknown>) => {
  promise.catch(error => {
    Logger.error(`Error in unawaited: ${error}`)
  })
}

/**
 * APIの呼び出し元で導入必須 ex. xxx.controller.tsファイルなど。
 *
 * responseDataがある場合は、messageフィールドはresponseに含まれない
 *
 * @message 動詞 + 目的語 ex. Created user
 * @responseData クライアントに返したい値
 *
 * @example
 * // responseDataが無い場合
 *app.post(
 *  '/user/create',
 *  async (req: express.Request, res: express.Response) => {
 *    try {
 *      return appSendSuccess({
 *        res,
 *        message: 'Created user',
 *      })
 *    } catch (error) {
 *      return appSendError({
 *        res,
 *        error,
 *      })
 *    }
 *  },
 *)
 * // responseDataがある場合
 *app.post(
 *  '/update/settlement',
 *  async (req: express.Request, res: express.Response) => {
 *    try {
 *      return appSendSuccess({
 *        res,
 *        responseData: {
 *          test1: 'test',
 *          test2: {
 *            test2: 'test2',
 *          },
 *        },
 *      })
 *    } catch (error) {
 *      return appSendError({
 *        res,
 *        error,
 *      })
 *    }
 *  },
 *)
 */
export const appSendSuccess = ({
  res,
  statusCode = ErrorHttpStatusCode.OK,
  message,
  responseData,
}: {
  res: express.Response
  message?: string
  statusCode?: ValuesOf<typeof ErrorHttpStatusCode>
  responseData?: unknown
}) => {
  if (message) {
    Logger.success(`[${statusCode}] ${message}`)
  }
  const response = responseData ? responseData : { message: message ?? '' }

  res.status(statusCode).send(response)
  return
}
