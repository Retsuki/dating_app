import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'readonly_user.freezed.dart';
part 'readonly_user.g.dart';

@freezed
class ReadonlyUser with _$ReadonlyUser {
  factory ReadonlyUser({
    @DateTimeTimestampConverter() required DateTime createdAt,
    @DateTimeTimestampConverter() required DateTime updatedAt,
    @Default(StatusSubscription.noStatus)
        StatusSubscription? statusSubscription,
    @Default(StatusIdentification.noStatus)
        StatusIdentification? statusIdentification,
    @Default(StatusAccount.noStatus) StatusAccount? statusAccount,
  }) = _ReadonlyUser;

  factory ReadonlyUser.fromJson(JsonMap json) => _$ReadonlyUserFromJson(json);
}

enum StatusSubscription {
  noStatus,
  pause,
  inprogress,
}

enum StatusIdentification {
  noStatus,
  accepted,
  sendBack,
  completed,
}

enum StatusAccount {
  noStatus,
  suspension,
  deleted,
}
