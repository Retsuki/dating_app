import { z } from 'zod'

export const DeleteUserParams = z.object({
  userId: z.string(),
})

export const CompleteSetupParams = z.object({
  userId: z.string(),
})
