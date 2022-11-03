export declare const API_METHOD_OPTIONS: readonly [
  'GET',
  'PUT',
  'HEAD',
  'POST',
  'DELETE',
]

export type MiddlewareOptions = typeof API_METHOD_OPTIONS[number]
