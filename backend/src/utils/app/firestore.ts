import admin from 'firebase-admin'

import { PrivateUser } from '../../types/models/private_user/private_user.model'
import { PrivateUserWorry } from '../../types/models/private_user/private_user_worry/private_user_worry.model'
import { ReadonlyUser } from '../../types/models/readonly_user/readonly_user.model'
import { User } from '../../types/models/user/user.model'
import { Worry } from '../../types/models/worry/worry.model'
import { converter } from '../../types/utils/common'

export const db = admin.firestore()

export class ColName {
  static user = 'user'
  static privateUser = 'private_user'
  static privateUserWorry = 'private_user_worry'
  static readonlyUser = 'readonly_user'

  static worry = 'worry'
}

export class ColRef {
  static user = db.collection(ColName.user).withConverter<User>(converter)
  static privateUser = db.collection(ColName.privateUser).withConverter<PrivateUser>(converter)
  static privateUserWorry = db.collection(ColName.privateUserWorry).withConverter<PrivateUserWorry>(converter)
  static readonlyUser = db.collection(ColName.readonlyUser).withConverter<ReadonlyUser>(converter)
  static worry = db.collection(ColName.worry).withConverter<Worry>(converter)
}
