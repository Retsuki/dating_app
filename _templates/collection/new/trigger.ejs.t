---
to: backend/src/triggers/<%= path %>/<%= h.changeCase.snake(collectionName) %>.trigger.ts
---
// import * as functions from 'firebase-functions'
// import { ChangeType, getChangeType } from '../../utils/app/functions'
// import { <%= h.changeCase.camel(collectionName) %>Service } from './<%= h.changeCase.snake(collectionName) %>.service'

// コレクションパス
// const documentPath = ``

/**
 * <%= h.changeCase.snake(collectionName) %>コレクショントリガー関数
 */
// export const <%= h.changeCase.camel(collectionName) %>Trigger = functions.firestore
//   .document(documentPath)
//   .onWrite(async change => {
//     const changeType = getChangeType(change)
//     switch (changeType) {
//       case ChangeType.create:
//       case ChangeType.update:
//       case ChangeType.delete:
//         break
//     }
//   })

// 必要になったらコメントアウトを外す

