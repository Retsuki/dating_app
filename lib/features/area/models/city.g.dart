// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cities _$$_CitiesFromJson(Map json) => _$_Cities(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => City.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_CitiesToJson(_$_Cities instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$_City _$$_CityFromJson(Map json) => _$_City(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
