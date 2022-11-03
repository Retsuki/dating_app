import type admin from 'firebase-admin'

export enum WorryCategoryType {
  koi,
  life,
  other,
}

export interface WorryCategory {
  created_at: admin.firestore.Timestamp
  updated_at: admin.firestore.Timestamp
  type: WorryCategoryType
  name: string
}
