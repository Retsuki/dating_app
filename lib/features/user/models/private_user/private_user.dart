import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user.freezed.dart';
part 'private_user.g.dart';

@freezed
class PrivateUser with _$PrivateUser {
  const factory PrivateUser({
    @DateTimeTimestampConverter() DateTime? createdAt,
    @DateTimeTimestampConverter() DateTime? updatedAt,
    @Default('') String sei,
    @Default('') String mei,
    @Default('') String prefecture,
    @Default('') String city,
    @Default('') String street,
    @Default('') String building,
  }) = _PrivateUser;

  factory PrivateUser.fromJson(JsonMap json) => _$PrivateUserFromJson(json);
}
