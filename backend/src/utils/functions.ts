import functions from 'firebase-functions'
import { DocumentSnapshot } from 'firebase-functions/v1/firestore'

export enum ChangeType {
  create,
  delete,
  update,
}

export const getChangeType = (change: functions.Change<DocumentSnapshot>) => {
  if (!change.after.exists) {
    return ChangeType.delete
  }
  if (!change.before.exists) {
    return ChangeType.create
  }
  return ChangeType.update
}
