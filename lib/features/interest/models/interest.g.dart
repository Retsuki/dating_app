// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Interest _$$_InterestFromJson(Map<String, dynamic> json) => _$_Interest(
      createdAt: const DateTimeTimestampConverter()
          .fromJson(json['createdAt'] as Object),
      updatedAt: const DateTimeTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      name: json['name'] as String,
      isShow: json['isShow'] as bool,
    );

Map<String, dynamic> _$$_InterestToJson(_$_Interest instance) =>
    <String, dynamic>{
      'createdAt':
          const DateTimeTimestampConverter().toJson(instance.createdAt),
      'updatedAt':
          const DateTimeTimestampConverter().toJson(instance.updatedAt),
      'name': instance.name,
      'isShow': instance.isShow,
    };
