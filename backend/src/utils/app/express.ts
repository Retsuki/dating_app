import { z, ZodType } from 'zod'

import type express from 'express'

// NOTE: fastifyの型を参考にしてる
// https://github.com/fastify/fastify/blob/2394f76b1eebf9fca3ce4f78e17be0a6a81b79dd/types/request.d.ts#L11-L16

// MEMO: namespaceを使おうとしたがnamespaceよりもdeclare moduleを推奨していた
// モジュール'express'を拡張している
declare module 'express' {
  /**
   * express.Requestのラッパー
   *
   * z.inferを省略できる
   *
   * @example
   * const zodSchema = z.object({ companyId: z.string() })
   *
   * req: express.AppRequest<{
   *   body: { companyId: string } // 型を入れる
   *   params: typeof zodSchema // zodの型もOK
   *   query: z.infer<typeof zodSchema)>
   * }>
   */
  type AppRequest<
    T extends RequestGenericInterface = {
      body: unknown
      params: unknown
      query: unknown
    },
    // T extends RequestGenericInterface = Record<string, unknown>,
  > = express.Request<
    // MEMO: zodのオブジェクトの場合はz.inferでラップする
    T['params'] extends ZodType ? z.infer<T['params']> : T['params'],
    unknown,
    T['body'] extends ZodType ? z.infer<T['body']> : T['body'],
    T['query'] extends ZodType ? z.infer<T['query']> : T['query'],
    Record<string, unknown>
  >
}

interface RequestGenericInterface {
  body?: unknown
  query?: unknown
  params?: unknown
}
