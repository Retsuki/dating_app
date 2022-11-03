import { z } from 'zod'

export const CompleteSetupParams = z.object({
  userId: z.string(),
})
