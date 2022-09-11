import type admin from 'firebase-admin'
import { UserGender } from '../../user/user.model'
import { WorryCategoryType } from '../../worry_category/worry_category.model'

export interface PrivateUserWorry {
  created_at: admin.firestore.Timestamp
  updated_at: admin.firestore.Timestamp
  text: string
  age: number
  gender: UserGender
  type: WorryCategoryType
}
