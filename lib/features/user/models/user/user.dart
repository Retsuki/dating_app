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
    @StringTimestampConverter() String? birthday,
    @Default('') String nickName,
    @Default('') String prefecture,
    @Default(true) bool isOnline,
    @Default(UserGender.other) UserGender gender,
    List<String>? interests,
    String? mainImage,
    String? subImage1,
    String? subImage2,
    String? subImage3,
    @Default(0) int height,
    @Default('') String occupation,
  }) = _User;

  factory User.fromJson(JsonMap json) => _$UserFromJson(json);
}

enum UserImageName {
  mainImage,
  subImage1,
  subImage2,
  subImage3,
}

enum UserGender {
  male,
  female,
  other,
  ;

  String toStr() {
    switch (this) {
      case male:
        return '男性';
      case female:
        return '女性';
      case other:
        return 'その他';
    }
  }
}

UserGender toUserGender(String value) {
  switch (value) {
    case '男性':
      return UserGender.male;
    case '女性':
      return UserGender.female;
    default:
      return UserGender.other;
  }
}
