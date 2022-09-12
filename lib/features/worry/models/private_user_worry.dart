import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/features/worry/models/worry_category.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user_worry.freezed.dart';
part 'private_user_worry.g.dart';

@freezed
class PrivateUserWorry with _$PrivateUserWorry {
  const factory PrivateUserWorry({
    @DateTimeTimestampConverter() DateTime? createdAt,
    @DateTimeTimestampConverter() DateTime? updatedAt,
    required String text,
    required int age,
    @Default(UserGender.other) UserGender gender,
    @Default(WorryCategoryType.other) WorryCategoryType type,
  }) = _PrivateUserWorry;

  factory PrivateUserWorry.fromJson(JsonMap json) =>
      _$PrivateUserWorryFromJson(json);
}
