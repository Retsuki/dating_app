// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'worry_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorryCategory _$$_WorryCategoryFromJson(Map json) => _$_WorryCategory(
      createdAt: const DateTimeTimestampConverter()
          .fromJson(json['created_at'] as Object),
      updatedAt: const DateTimeTimestampConverter()
          .fromJson(json['updated_at'] as Object),
      type: $enumDecodeNullable(_$WorryCategoryTypeEnumMap, json['type']) ??
          WorryCategoryType.other,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_WorryCategoryToJson(_$_WorryCategory instance) =>
    <String, dynamic>{
      'created_at':
          const DateTimeTimestampConverter().toJson(instance.createdAt),
      'updated_at':
          const DateTimeTimestampConverter().toJson(instance.updatedAt),
      'type': _$WorryCategoryTypeEnumMap[instance.type]!,
      'name': instance.name,
    };

const _$WorryCategoryTypeEnumMap = {
  WorryCategoryType.koi: 'koi',
  WorryCategoryType.life: 'life',
  WorryCategoryType.other: 'other',
};
