import * as functions from 'firebase-functions'

import { ReadonlyUser } from '../../../types/models/readonly_user/readonly_user.model'
import { appFirebase } from '../../../utils/app/firebase'
import { ColRef } from '../../../utils/app/firestore'
import { Logger } from '../../../utils/app/logger'

/**
 * readonly_userコレクショントリガー関数
 */
export const readonlyUserTrigger = functions
  .region('asia-northeast1')
  .auth.user()
  .onCreate(async user => {
    const userId = user.uid
    const readonlyUser = new ReadonlyUser({
      created_at: appFirebase.serverTimestamp(),
      updated_at: appFirebase.serverTimestamp(),
      is_completed_setup: false,
    })
    return await ColRef.readonlyUser
      .doc(userId)
      .set(readonlyUser)
      .then(() => {
        Logger.success(`created readonly user ${userId}`)
        return
      })
      .catch(error => {
        Logger.error(`create readonly user ${userId} failed`)
        throw error
      })
  })
