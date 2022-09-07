// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$$_ChatMessageFromJson(Map json) => _$_ChatMessage(
      createdAt: _$JsonConverterFromJson<Object, DateTime>(
          json['created_at'], const DateTimeTimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Object, DateTime>(
          json['updated_at'], const DateTimeTimestampConverter().fromJson),
      isDeleted: json['is_deleted'] as bool? ?? false,
      message: json['message'] as String,
      senderId: json['sender_id'] as String,
    );

Map<String, dynamic> _$$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'created_at': _$JsonConverterToJson<Object, DateTime>(
          instance.createdAt, const DateTimeTimestampConverter().toJson),
      'updated_at': _$JsonConverterToJson<Object, DateTime>(
          instance.updatedAt, const DateTimeTimestampConverter().toJson),
      'is_deleted': instance.isDeleted,
      'message': instance.message,
      'sender_id': instance.senderId,
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
