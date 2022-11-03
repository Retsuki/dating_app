import admin from 'firebase-admin'
import { Logger } from '../../../utils/app/logger'
import { HTTP500Error } from '../../../utils/error/error'
import { PrivateUserWorry } from '../../../types/models/private_user/private_user_worry/private_user_worry.model'
import { ColName } from '../../../utils/app/firestore'

const db = admin.firestore()

/**
 * private_user_worryコレクショントリガー固有のサービス
 */
export const privateUserWorryService = {
  copyToWorry: async (doc: admin.firestore.DocumentSnapshot) => {
    try {
      const id = doc.id
      const data = doc.data() as PrivateUserWorry
      await db.doc(`${ColName.worry}/${id}`).set(data, { merge: true })
      Logger.success(`copy to worry collection!! privateUserWorryId: ${id}`)
    } catch (error) {
      throw new HTTP500Error({
        error,
        message: `copyToWorry. id: ${doc.id}`,
      })
    }
  },

  deleteWorry: async (id: string) => {
    try {
      await db.doc(`${ColName}/${id}`).delete()
      Logger.success(`delete document!! privateUserWorryId: ${id}`)
    } catch (error) {
      throw new HTTP500Error({
        error,
        message: `deleteWorry. id: ${id}`,
      })
    }
  },
}
