import { AppFirestoreModel } from '../../utils/common'

export class ReadonlyUser extends AppFirestoreModel {
  created_at: FirebaseFirestore.Timestamp | FirebaseFirestore.FieldValue
  updated_at: FirebaseFirestore.Timestamp | FirebaseFirestore.FieldValue
  is_completed_setup: boolean
  constructor(data: {
    created_at: FirebaseFirestore.Timestamp | FirebaseFirestore.FieldValue
    updated_at: FirebaseFirestore.Timestamp | FirebaseFirestore.FieldValue
    is_completed_setup: boolean
  }) {
    super()

    this.created_at = data.created_at
    this.updated_at = data.updated_at
    this.is_completed_setup = data.is_completed_setup
  }
}
