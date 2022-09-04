import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @DateTimeTimestampConverter() DateTime? createdAt,
    @DateTimeTimestampConverter() DateTime? updatedAt,
    @Default(false) bool isDeleted,
    required String message,
    required String senderId,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(JsonMap json) => _$ChatMessageFromJson(json);
}
