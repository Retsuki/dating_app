// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      createdAt: const DateTimeTimestampConverter()
          .fromJson(json['createdAt'] as Object),
      updatedAt: const DateTimeTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      birthday: const DateTimeTimestampConverter()
          .fromJson(json['birthday'] as Object),
      nickName: json['nickName'] as String,
      gender: $enumDecode(_$UserGenderEnumMap, json['gender']),
      prefecture: json['prefecture'] as String,
      interest:
          (json['interest'] as List<dynamic>).map((e) => e as String).toList(),
      isOnline: json['isOnline'] as bool,
      mainImage: json['mainImage'] as String?,
      subImage1: json['subImage1'] as String?,
      subImage2: json['subImage2'] as String?,
      subImage3: json['subImage3'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'createdAt':
          const DateTimeTimestampConverter().toJson(instance.createdAt),
      'updatedAt':
          const DateTimeTimestampConverter().toJson(instance.updatedAt),
      'birthday': const DateTimeTimestampConverter().toJson(instance.birthday),
      'nickName': instance.nickName,
      'gender': _$UserGenderEnumMap[instance.gender]!,
      'prefecture': instance.prefecture,
      'interest': instance.interest,
      'isOnline': instance.isOnline,
      'mainImage': instance.mainImage,
      'subImage1': instance.subImage1,
      'subImage2': instance.subImage2,
      'subImage3': instance.subImage3,
    };

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
};
