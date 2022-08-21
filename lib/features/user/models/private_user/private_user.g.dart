// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrivateUser _$$_PrivateUserFromJson(Map<String, dynamic> json) =>
    _$_PrivateUser(
      createdAt: const DateTimeTimestampConverter()
          .fromJson(json['createdAt'] as Object),
      updatedAt: const DateTimeTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      sei: json['sei'] as String,
      mei: json['mei'] as String,
      prefecture: json['prefecture'] as String,
      city: json['city'] as String,
      street: json['street'] as String,
      building: json['building'] as String,
    );

Map<String, dynamic> _$$_PrivateUserToJson(_$_PrivateUser instance) =>
    <String, dynamic>{
      'createdAt':
          const DateTimeTimestampConverter().toJson(instance.createdAt),
      'updatedAt':
          const DateTimeTimestampConverter().toJson(instance.updatedAt),
      'sei': instance.sei,
      'mei': instance.mei,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'street': instance.street,
      'building': instance.building,
    };
