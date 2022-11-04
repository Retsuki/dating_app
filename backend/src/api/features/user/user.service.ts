import { z } from 'zod'

import { appFirebase, firebaseAuth } from '../../../utils/app/firebase'
import { ColRef } from '../../../utils/app/firestore'
import { Logger } from '../../../utils/app/logger'
import { HTTP500Error } from '../../../utils/error/error'

import { CompleteSetupParams, DeleteUserParams } from './user.schema'

/**
 * 「ユーザー」機能固有のサービス（constant + module + repositoryを合わせた処理）
 */
export const userService = {
  /**
   * ユーザーアカウント・データを全削除
   */
  async deleteUser({ userId }: z.infer<typeof DeleteUserParams>) {
    try {
      await Promise.all([
        firebaseAuth.deleteUser(userId),
        appFirebase.deleteCollectionOrDocument(ColRef.user.doc(userId)),
        appFirebase.deleteCollectionOrDocument(ColRef.privateUser.doc(userId)),
        appFirebase.deleteCollectionOrDocument(ColRef.readonlyUser.doc(userId)),
      ])
    } catch (error) {
      throw new HTTP500Error({
        error,
      })
    }
  },
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
