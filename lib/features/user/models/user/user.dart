import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:dating_app/utils/json_converters/string_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @DateTimeTimestampConverter() DateTime? createdAt,
    @DateTimeTimestampConverter() DateTime? updatedAt,
    @StringTimestampConverter() @Default('2000/01/01') String birthday,
    @Default('') String nickName,
    @Default('') String prefecture,
    @Default(true) bool isOnline,
    @Default(UserGender.other) UserGender gender,
    List<String>? interest,
    String? mainImage,
    String? subImage1,
    String? subImage2,
    String? subImage3,
  }) = _User;

  factory User.fromJson(JsonMap json) => _$UserFromJson(json);
}

enum UserGender {
  male,
  female,
  other,
}
