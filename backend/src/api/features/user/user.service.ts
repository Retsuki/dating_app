import { z } from 'zod'

import { ColRef } from '../../../utils/app/firestore'
import { Logger } from '../../../utils/app/logger'
import { HTTP500Error } from '../../../utils/error/error'

import { CompleteSetupParams } from './user.schema'
/**
 * 「ユーザー」機能固有のサービス（constant + module + repositoryを合わせた処理）
 */
export const userService = {
  /**
   * Description
   */
  async completeSetup({ userId }: z.infer<typeof CompleteSetupParams>) {
    try {
      await ColRef.readonlyUser.doc(userId).set(
        {
          is_completed_setup: true,
        },
        { merge: true },
      )
      Logger.success('updated isCompletedSetup filed')
      return
    } catch (error) {
      throw new HTTP500Error({
        error,
      })
    }
  },
}
