import admin from 'firebase-admin'
import { Logger } from '../../../../utils/logger'
import { ColName } from '../../../../constants/collection'
import { HTTP500Error } from '../../../../utils/error/error'
import { PrivateUserWorry } from './private_user_worry.model'

const db = admin.firestore()

export const privateUserWorryService = {
  copyToWorry: async (doc: admin.firestore.DocumentSnapshot) => {
    try {
      const id = doc.id
      const data = doc.data() as PrivateUserWorry
      await db.doc(`${ColName.worry}/${id}`).set(data, { merge: true })
      Logger.success(`copy to worry collection!! privateUserWorryId: ${id}`)
    } catch (error) {
      throw new HTTP500Error({
        message: `copyToWorry. id: ${doc.id}\n${error}`,
      })
    }
  },

  deleteWorry: async (id: string) => {
    try {
      await db.doc(`${ColName}/${id}`).delete()
      Logger.success(`delete document!! privateUserWorryId: ${id}`)
    } catch (error) {
      throw new HTTP500Error({
        message: `deleteWorry. id: ${id}\n${error}`,
      })
    }
  },
}
