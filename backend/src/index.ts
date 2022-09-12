import admin from 'firebase-admin'

if (admin.apps.length === 0) {
  admin.initializeApp()
}

export * from './trigger/collections/private_user/private_user_worry/private_user_worry.trigger'
