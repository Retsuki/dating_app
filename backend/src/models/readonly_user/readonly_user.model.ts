import type admin from 'firebase-admin'

export interface ReadonlyUser {
  created_at: admin.firestore.Timestamp
  updated_at: admin.firestore.Timestamp
}
