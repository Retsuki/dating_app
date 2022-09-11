import * as functions from 'firebase-functions'
import { ColName } from '../../../../constants/collection'
import { ChangeType, getChangeType } from '../../../../utils/functions'
import { privateUserWorryService } from './private_user_worry.service'

const documentPath = `${ColName.privateUser}/{privateUserId}/${ColName.privateUserWorry}/{privateUserWorryId}`

export const privateUserWorryTrigger = functions.firestore
  .document(documentPath)
  .onWrite(async change => {
    const changeType = getChangeType(change)
    switch (changeType) {
      case ChangeType.create:
      case ChangeType.update:
        await privateUserWorryService.copyToWorry(change.after)
        break
      case ChangeType.delete:
        await privateUserWorryService.deleteWorry(change.after.id)
        break
    }
  })
