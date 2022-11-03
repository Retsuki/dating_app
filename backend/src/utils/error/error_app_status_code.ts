export enum Client {
  notFoundAuthorization = 'not_found_Authorization',
  methodNotAllowed = 'method_not_allowed',
  notFound = 'not_found',
  invalidToken = 'invalid_token',
  invalidRequest = 'invalid_request',
}

export enum Server {
  unexpected = 'unexpected',
}

export const AppErrorCode = {
  Client,
  Server,
}

export type ValuesOf<T> = T[keyof T]
export type AppErrorCodeType = ValuesOf<typeof Client> | ValuesOf<typeof Server>
