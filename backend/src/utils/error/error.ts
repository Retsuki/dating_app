import { Logger } from '../logger'
import { ErrorHttpStatusCode } from './error_http_status_code'
import { AppErrorCode, AppErrorCodeType } from './error_app_status_code'

export class BaseError extends Error {
  public readonly code: AppErrorCodeType
  public readonly httpCode: ErrorHttpStatusCode

  constructor(
    code: AppErrorCodeType,
    httpCode: ErrorHttpStatusCode,
    message: string,
  ) {
    super(message)
    this.code = code
    this.httpCode = httpCode

    Logger.error(`${httpCode}: ${message}`)
  }

  get responseToClient() {
    return {
      code: this.code,
      message: this.message,
    }
  }
}

/**
 * クライアントエラーと認識される何か(例えば、不正なリクエスト構文、無効なリクエストメッセージフレーム、または不正なリクエストルーティング)のために、サーバーがリクエストを処理できないか、または処理しようとしないことです。
 */
export class HTTP400Error extends BaseError {
  constructor({
    code,
    httpCode = ErrorHttpStatusCode.BAD_REQUEST,
    message,
  }: {
    code: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * クライアントは要求されたレスポンスを得るために自分自身を認証する必要があります。
 */
export class HTTP401Error extends BaseError {
  constructor({
    code,
    httpCode = ErrorHttpStatusCode.UNAUTHORIZED,
    message,
  }: {
    code: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * クライアントにはコンテンツへのアクセス権がありません。つまり、許可されていないため、サーバーは要求されたリソースの提供を拒否しています。 401 Unauthorized とは異なり、クライアントの ID はサーバーに知られています。
 */
export class HTTP403Error extends BaseError {
  constructor({
    code,
    httpCode = ErrorHttpStatusCode.FORBIDEN,
    message,
  }: {
    code: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * サーバーは要求されたリソースを見つけることができません。
 */
export class HTTP404Error extends BaseError {
  constructor({
    code,
    httpCode = ErrorHttpStatusCode.NOT_FOUND,
    message,
  }: {
    code: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * サーバーはこのリクエストメソッドを知っているが、対象となるリソースがサポートしていない。
 */
export class HTTP405Error extends BaseError {
  constructor({
    code,
    httpCode = ErrorHttpStatusCode.METHOD_NOT_ALLOWED,
    message,
  }: {
    code: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * ユーザーが一定時間内に送信したリクエストの数が多すぎる
 */
export class HTTP429Error extends BaseError {
  constructor({
    code,
    httpCode = ErrorHttpStatusCode.TOO_MANY_REQUESTS,
    message,
  }: {
    code: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * サーバーが処理方法を知らない状況に遭遇しました。
 */
export class HTTP500Error extends BaseError {
  constructor({
    code = AppErrorCode.Server.serverError,
    httpCode = ErrorHttpStatusCode.INTERNAL_SERVER_ERROR,
    message,
  }: {
    code?: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * リクエストメソッドはサーバーでサポートされていないため、処理することができません。
 */
export class HTTP501Error extends BaseError {
  constructor({
    code = AppErrorCode.Server.serverError,
    httpCode = ErrorHttpStatusCode.NOT_INPLEMENTED,
    message,
  }: {
    code?: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * サーバーがリクエストの処理に必要な応答を得るためにゲートウェイとして動作している間に、無効な応答を得たことを意味します。
 */
export class HTTP502Error extends BaseError {
  constructor({
    code = AppErrorCode.Server.serverError,
    httpCode = ErrorHttpStatusCode.BAD_GATEWAY,
    message,
  }: {
    code?: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * サーバーがリクエストを処理する準備ができていない。一般的な原因は、サーバーがメンテナンスのために停止しているか、過負荷になっていることです
 */
export class HTTP503Error extends BaseError {
  constructor({
    code = AppErrorCode.Server.serverError,
    httpCode = ErrorHttpStatusCode.SERVICE_UNAVAILABLE,
    message,
  }: {
    code?: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * このエラー応答は、サーバーがゲートウェイとして動作しており、時間内に応答を得ることができない場合に返されます。
 */
export class HTTP504Error extends BaseError {
  constructor({
    code = AppErrorCode.Server.serverError,
    httpCode = ErrorHttpStatusCode.GATEWAY_TIMEOUT,
    message,
  }: {
    code?: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
/**
 * リクエストに使用された HTTP のバージョンは、サーバーによってサポートされていません。
 */
export class HTTP505Error extends BaseError {
  constructor({
    code = AppErrorCode.Server.serverError,
    httpCode = ErrorHttpStatusCode.HTTP_VERSION_NOT_SUPPORTED,
    message,
  }: {
    code?: AppErrorCodeType
    httpCode?: ErrorHttpStatusCode
    message: string
  }) {
    super(code, httpCode, message)
  }
}
