export enum User {
  notFoundUser = 'not_found_user',
}

export enum Server {
  serverError = 'server_error',
  serverUnexpectedError = 'server_unexpected_error',
}

export enum Common {
  notFound = 'not_found',
  invalidRequest = 'invalid_request',
}

export const AppErrorCode = {
  Common,
  User,
  Server,
}

export type ValuesOf<T> = T[keyof T]
export type AppErrorCodeType =
  | ValuesOf<typeof Common>
  | ValuesOf<typeof User>
  | ValuesOf<typeof Server>
