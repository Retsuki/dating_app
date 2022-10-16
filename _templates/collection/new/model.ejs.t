---
to: backend/src/models/<%= path %>/<%= h.changeCase.snake(collectionName) %>.model.ts
---
import type admin from 'firebase-admin'

export interface <%= h.changeCase.pascal(collectionName) %> {
  created_at: admin.firestore.Timestamp
  updated_at: admin.firestore.Timestamp
}
