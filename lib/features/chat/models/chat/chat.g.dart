// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map json) => _$_Chat(
      createdAt: _$JsonConverterFromJson<Object, DateTime>(
          json['created_at'], const DateTimeTimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Object, DateTime>(
          json['updated_at'], const DateTimeTimestampConverter().fromJson),
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      membersInfo: (json['members_info'] as Map).map(
        (k, e) => MapEntry(k as String,
            MembersInfo.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      latestMessage: json['latest_message'] as String,
      lastSenderId: json['last_sender_id'] as String,
      readStatus: Map<String, bool>.from(json['read_status'] as Map),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'created_at': _$JsonConverterToJson<Object, DateTime>(
          instance.createdAt, const DateTimeTimestampConverter().toJson),
      'updated_at': _$JsonConverterToJson<Object, DateTime>(
          instance.updatedAt, const DateTimeTimestampConverter().toJson),
      'members': instance.members,
      'members_info':
          instance.membersInfo.map((k, e) => MapEntry(k, e.toJson())),
      'latest_message': instance.latestMessage,
      'last_sender_id': instance.lastSenderId,
      'read_status': instance.readStatus,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$_MembersInfo _$$_MembersInfoFromJson(Map json) => _$_MembersInfo(
      mainImage: json['main_image'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_MembersInfoToJson(_$_MembersInfo instance) =>
    <String, dynamic>{
      'main_image': instance.mainImage,
      'name': instance.name,
    };
