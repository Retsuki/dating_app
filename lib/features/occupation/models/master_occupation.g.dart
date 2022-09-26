// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'master_occupation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MasterOccupation _$$_MasterOccupationFromJson(Map json) =>
    _$_MasterOccupation(
      createdAt: _$JsonConverterFromJson<Object, DateTime>(
          json['created_at'], const DateTimeTimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Object, DateTime>(
          json['updated_at'], const DateTimeTimestampConverter().fromJson),
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_MasterOccupationToJson(_$_MasterOccupation instance) =>
    <String, dynamic>{
      'created_at': _$JsonConverterToJson<Object, DateTime>(
          instance.createdAt, const DateTimeTimestampConverter().toJson),
      'updated_at': _$JsonConverterToJson<Object, DateTime>(
          instance.updatedAt, const DateTimeTimestampConverter().toJson),
      'name': instance.name,
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
