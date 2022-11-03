import { UserGender } from '../user/user.model'
import { WorryCategoryType } from '../worry_category/worry_category.model'

import type admin from 'firebase-admin'

export interface Worry {
  created_at: admin.firestore.Timestamp
  updated_at: admin.firestore.Timestamp
  text: string
  age: number
  gender: UserGender
  type: WorryCategoryType
}
