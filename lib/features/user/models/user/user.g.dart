// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      createdAt: _$JsonConverterFromJson<Object, DateTime>(
          json['created_at'], const DateTimeTimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Object, DateTime>(
          json['updated_at'], const DateTimeTimestampConverter().fromJson),
      birthday: json['birthday'] == null
          ? '2000/01/01'
          : const StringTimestampConverter()
              .fromJson(json['birthday'] as Object),
      nickName: json['nick_name'] as String? ?? '',
      prefecture: json['prefecture'] as String? ?? '',
      isOnline: json['is_online'] as bool? ?? true,
      gender: $enumDecodeNullable(_$UserGenderEnumMap, json['gender']) ??
          UserGender.other,
      interest: (json['interest'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mainImage: json['main_image'] as String?,
      subImage1: json['sub_image1'] as String?,
      subImage2: json['sub_image2'] as String?,
      subImage3: json['sub_image3'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'created_at': _$JsonConverterToJson<Object, DateTime>(
          instance.createdAt, const DateTimeTimestampConverter().toJson),
      'updated_at': _$JsonConverterToJson<Object, DateTime>(
          instance.updatedAt, const DateTimeTimestampConverter().toJson),
      'birthday': const StringTimestampConverter().toJson(instance.birthday),
      'nick_name': instance.nickName,
      'prefecture': instance.prefecture,
      'is_online': instance.isOnline,
      'gender': _$UserGenderEnumMap[instance.gender]!,
      'interest': instance.interest,
      'main_image': instance.mainImage,
      'sub_image1': instance.subImage1,
      'sub_image2': instance.subImage2,
      'sub_image3': instance.subImage3,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
  UserGender.other: 'other',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
