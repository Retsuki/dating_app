import type admin from 'firebase-admin'

export interface PrivateUser {
  created_at: admin.firestore.Timestamp
  updated_at: admin.firestore.Timestamp
  sei: string
  mei: string
  prefecture: string
  city: string
  street: string
  building: string
}
