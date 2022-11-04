import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_api_error.freezed.dart';
part 'app_api_error.g.dart';

@freezed
class AppApiException with _$AppApiException implements Exception {
  const factory AppApiException({
    required AppApiErrorCode code,
    @Default('') String message,
  }) = _AppApiException;

  factory AppApiException.fromJson(JsonMap json) =>
      _$AppApiExceptionFromJson(json);
}

enum AppApiErrorCode {
  notFoundAuthorization,
  methodNotAllowed,
  notFound,
  invalidToken,
  invalidRequest,
  unexpected,
  ;

  String message(L10n l10n) {
    switch (this) {
      case AppApiErrorCode.notFoundAuthorization:
      case AppApiErrorCode.methodNotAllowed:
      case AppApiErrorCode.notFound:
      case AppApiErrorCode.invalidToken:
      case AppApiErrorCode.invalidRequest:
      case AppApiErrorCode.unexpected:
        return l10n.errorUnexpected;
    }
  }
}
