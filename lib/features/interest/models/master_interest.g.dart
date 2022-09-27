// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'master_interest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MasterInterest _$$_MasterInterestFromJson(Map json) => _$_MasterInterest(
      createdAt: const DateTimeTimestampConverter()
          .fromJson(json['created_at'] as Object),
      updatedAt: const DateTimeTimestampConverter()
          .fromJson(json['updated_at'] as Object),
      name: json['name'] as String,
      isShow: json['is_show'] as bool,
    );

Map<String, dynamic> _$$_MasterInterestToJson(_$_MasterInterest instance) =>
    <String, dynamic>{
      'created_at':
          const DateTimeTimestampConverter().toJson(instance.createdAt),
      'updated_at':
          const DateTimeTimestampConverter().toJson(instance.updatedAt),
      'name': instance.name,
      'is_show': instance.isShow,
    };
