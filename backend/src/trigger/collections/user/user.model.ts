import type admin from 'firebase-admin'

export enum UserGender {
  male,
  female,
  gender,
}

export interface User {
  created_at: admin.firestore.Timestamp
  updated_at: admin.firestore.Timestamp
  nick_name: string
  gender: UserGender
  birthday: admin.firestore.Timestamp
  main_image?: string
  sub_image1?: string
  sub_image2?: string
  sub_image3?: string
  prefecture: string
  interests?: string[]
  is_online: boolean
}
