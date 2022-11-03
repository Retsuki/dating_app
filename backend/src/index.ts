import admin from 'firebase-admin'

if (admin.apps.length === 0) {
  admin.initializeApp()
}

export * from './triggers/private_user/private_user_worry/private_user_worry.trigger'
export * from './api/features/user/user.controller'
export * from './api/features/user/user.trigger'
