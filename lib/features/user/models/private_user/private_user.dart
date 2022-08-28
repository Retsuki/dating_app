import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user.freezed.dart';
part 'private_user.g.dart';

@freezed
class PrivateUser with _$PrivateUser {
  const factory PrivateUser({
    @DateTimeTimestampConverter() required DateTime createdAt,
    @DateTimeTimestampConverter() required DateTime updatedAt,
    required String sei,
    required String mei,
    required String prefecture,
    required String city,
    required String street,
    required String building,
  }) = _PrivateUser;

  factory PrivateUser.fromJson(JsonMap json) => _$PrivateUserFromJson(json);
}
