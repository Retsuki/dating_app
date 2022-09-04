import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    @DateTimeTimestampConverter() DateTime? createdAt,
    @DateTimeTimestampConverter() DateTime? updatedAt,
    required List<String> members,
  }) = _Chat;

  factory Chat.fromJson(JsonMap json) => _$ChatFromJson(json);
}
