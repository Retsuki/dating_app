import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @DateTimeTimestampConverter() required DateTime createdAt,
    @DateTimeTimestampConverter() required DateTime updatedAt,
    @DateTimeTimestampConverter() required DateTime birthday,
    required String nickName,
    required UserGender gender,
    required String prefecture,
    required List<String> interest,
    required bool isOnline,
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
}
