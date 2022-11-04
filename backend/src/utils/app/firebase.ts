import admin from 'firebase-admin'
import * as functions from 'firebase-functions'

import { unawaited } from '../app/common'
import { assertIsDefined } from '../error/error'

import { Logger } from './logger'

export const db = admin.firestore()
export const firebaseAuth = admin.auth()

export const appFirebase = {
  /**
   * doc.data()を取得
   *
   * ❗ ドキュメントの中身が空の場合はHttp500Error ❗
   */
  async getDocData<T>(
    docRef: FirebaseFirestore.DocumentReference<T>,
  ): Promise<T> {
    const doc = await docRef.get()
    const data = doc.data()
    assertIsDefined(data)
    return data
  },
  /**
   * DocumentSnapshotからdoc.data()を取得
   *
   * ❗ ドキュメントの中身が空の場合はHttp500Error ❗
   */
  getDocDataFromDoc<T>(doc: FirebaseFirestore.DocumentSnapshot<T>): T {
    const data = doc.data()
    assertIsDefined(data)
    return data
  },
  /**
   * DocumentSnapshotとdoc.data()を取得
   *
   * ❗ ドキュメントの中身が空の場合はHttp500Error ❗
   */
  async getDocAndData<T>(
    docRef: FirebaseFirestore.DocumentReference<T>,
  ): Promise<{ doc: FirebaseFirestore.DocumentSnapshot<T>; data: T }> {
    const doc = await docRef.get()
    const data = doc.data()
    assertIsDefined(data)
    return { doc, data }
  },
  /**
   * サーバータイムスタンプ
   */
  serverTimestamp: () => {
    return admin.firestore.FieldValue.serverTimestamp()
  },
  /**
   * date to FirebaseFirestore.Timestamp
   */
  toTimestamp: (date: Date) => {
    return admin.firestore.Timestamp.fromDate(date)
  },
  increment: admin.firestore.FieldValue.increment,
  /**
   * この関数は、指定したコレクションもしくは、ドキュメント直下のデータを全て削除する関数です。
   */
  deleteCollectionOrDocument: async (
    ref:
      | admin.firestore.CollectionReference
      | admin.firestore.DocumentReference,
    maxRetryAttempts = 5,
  ) => {
    const bulkWriter = db.bulkWriter()
    bulkWriter.onWriteError(error => {
      if (error.failedAttempts < maxRetryAttempts) {
        return true
      } else {
        Logger.warn(`Failed write at document: ${error.documentRef.path}`)
        return false
      }
    })

    return db.recursiveDelete(ref, bulkWriter)
  },

  /**
   *  Firebase Authにユーザーがいるかチェック
   */
  async checkUserExistOnFirebaseAuth(uid: string) {
    return admin
      .auth()
      .getUser(uid)
      .then(() => true)
      .catch(() => false)
  },

  // TODO: 整理
  /** 複数発火防止（functionsのEventIdをfirestoreに格納して存在しているか確認） */
  wasTriggered: async (eventId: string) => {
    const eventDoc = await db.collection('functions_events').doc(eventId).get()

    if (eventDoc.exists) {
      Logger.log(`Message: ${eventId} already processed`)
      return false
    }

    await db
      .collection('functions_events')
      .doc(eventId)
      .set({ eventId: eventId })
    Logger.log(`START: ${eventId}`)
    return true
  },

  // 複数発火防止処理を削除
  deleteTriggered: (eventId: string) => {
    unawaited(db.collection('functions_events').doc(eventId).delete())
    Logger.log(`DELETE: 'functions_events' ${eventId} document`)
  },

  getChangeType: (change: functions.Change<FirebaseFirestore.DocumentData>) => {
    if (!change.after.exists) {
      return 'DELETE'
    }
    if (!change.before.exists) {
      return 'CREATE'
    }
    return 'UPDATE'
  },
}
