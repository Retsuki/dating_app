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
    required Map<String, MembersInfo> membersInfo,
    required String latestMessage,
    required String lastSenderId,
    required Map<String, bool> readStatus,
  }) = _Chat;

  factory Chat.fromJson(JsonMap json) => _$ChatFromJson(json);
}

@freezed
class MembersInfo with _$MembersInfo {
  const factory MembersInfo({
    required String mainImage,
    required String name,
  }) = _MembersInfo;

  factory MembersInfo.fromJson(JsonMap json) => _$MembersInfoFromJson(json);
}
