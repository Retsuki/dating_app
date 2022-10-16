import admin from 'firebase-admin'
import { User } from '../../triggers/collections/user/user.model'
import { PrivateUser } from '../../triggers/private_user/private_user.model'
import { PrivateUserWorry } from '../../triggers/private_user/private_user_worry/private_user_worry.model'
import { ReadonlyUser } from '../../triggers/collections/readonly_user/readonly_user'

export const db = admin.firestore()

export class ColName {
  static user = 'user'
  static privateUser = 'private_user'
  static privateUserWorry = 'private_user_worry'
  static readonlyUser = 'readonly_user'

  static worry = 'worry'
}

const converter = {
  toFirestore: <T>(data: T) => data,
  fromFirestore: <T>(snapshot: FirebaseFirestore.QueryDocumentSnapshot) => snapshot.data() as T,
}

export class ColRef {
  static user = db.collection(ColName.user).withConverter<User>(converter)
  static privateUser = db.collection(ColName.privateUser).withConverter<PrivateUser>(converter)
  static privateUserWorry = db.collection(ColName.privateUserWorry).withConverter<PrivateUserWorry>(converter)
  static readonlyUser = db.collection(ColName.readonlyUser).withConverter<ReadonlyUser>(converter)
  static worry = db.collection(ColName.worry).withConverter<Worr>(converter)
}
