// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'private_user_worry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrivateUserWorry _$$_PrivateUserWorryFromJson(Map json) =>
    _$_PrivateUserWorry(
      createdAt: _$JsonConverterFromJson<Object, DateTime>(
          json['created_at'], const DateTimeTimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Object, DateTime>(
          json['updated_at'], const DateTimeTimestampConverter().fromJson),
      text: json['text'] as String,
      age: json['age'] as int,
      gender: $enumDecodeNullable(_$UserGenderEnumMap, json['gender']) ??
          UserGender.other,
      type: $enumDecodeNullable(_$WorryCategoryTypeEnumMap, json['type']) ??
          WorryCategoryType.other,
    );

Map<String, dynamic> _$$_PrivateUserWorryToJson(_$_PrivateUserWorry instance) =>
    <String, dynamic>{
      'created_at': _$JsonConverterToJson<Object, DateTime>(
          instance.createdAt, const DateTimeTimestampConverter().toJson),
      'updated_at': _$JsonConverterToJson<Object, DateTime>(
          instance.updatedAt, const DateTimeTimestampConverter().toJson),
      'text': instance.text,
      'age': instance.age,
      'gender': _$UserGenderEnumMap[instance.gender]!,
      'type': _$WorryCategoryTypeEnumMap[instance.type]!,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$UserGenderEnumMap = {
  UserGender.male: '男性',
  UserGender.female: '女性',
  UserGender.other: 'その他',
};

const _$WorryCategoryTypeEnumMap = {
  WorryCategoryType.koi: 'koi',
  WorryCategoryType.life: 'life',
  WorryCategoryType.other: 'other',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
