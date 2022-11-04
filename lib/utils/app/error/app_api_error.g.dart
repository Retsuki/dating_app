// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'app_api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppApiException _$$_AppApiExceptionFromJson(Map json) => _$_AppApiException(
      code: $enumDecode(_$AppApiErrorCodeEnumMap, json['code']),
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_AppApiExceptionToJson(_$_AppApiException instance) =>
    <String, dynamic>{
      'code': _$AppApiErrorCodeEnumMap[instance.code]!,
      'message': instance.message,
    };

const _$AppApiErrorCodeEnumMap = {
  AppApiErrorCode.notFoundAuthorization: 'notFoundAuthorization',
  AppApiErrorCode.methodNotAllowed: 'methodNotAllowed',
  AppApiErrorCode.notFound: 'notFound',
  AppApiErrorCode.invalidToken: 'invalidToken',
  AppApiErrorCode.invalidRequest: 'invalidRequest',
  AppApiErrorCode.unexpected: 'unexpected',
};
