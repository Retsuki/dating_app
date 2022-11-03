// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'readonly_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadonlyUser _$$_ReadonlyUserFromJson(Map json) => _$_ReadonlyUser(
      createdAt: const DateTimeTimestampConverter()
          .fromJson(json['created_at'] as Object),
      updatedAt: const DateTimeTimestampConverter()
          .fromJson(json['updated_at'] as Object),
      statusSubscription: $enumDecodeNullable(
              _$StatusSubscriptionEnumMap, json['status_subscription']) ??
          StatusSubscription.noStatus,
      statusIdentification: $enumDecodeNullable(
              _$StatusIdentificationEnumMap, json['status_identification']) ??
          StatusIdentification.noStatus,
      statusAccount:
          $enumDecodeNullable(_$StatusAccountEnumMap, json['status_account']) ??
              StatusAccount.noStatus,
      isCompletedSetup: json['is_completed_setup'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ReadonlyUserToJson(_$_ReadonlyUser instance) =>
    <String, dynamic>{
      'created_at':
          const DateTimeTimestampConverter().toJson(instance.createdAt),
      'updated_at':
          const DateTimeTimestampConverter().toJson(instance.updatedAt),
      'status_subscription':
          _$StatusSubscriptionEnumMap[instance.statusSubscription],
      'status_identification':
          _$StatusIdentificationEnumMap[instance.statusIdentification],
      'status_account': _$StatusAccountEnumMap[instance.statusAccount],
      'is_completed_setup': instance.isCompletedSetup,
    };

const _$StatusSubscriptionEnumMap = {
  StatusSubscription.noStatus: 'noStatus',
  StatusSubscription.pause: 'pause',
  StatusSubscription.inprogress: 'inprogress',
};

const _$StatusIdentificationEnumMap = {
  StatusIdentification.noStatus: 'noStatus',
  StatusIdentification.accepted: 'accepted',
  StatusIdentification.sendBack: 'sendBack',
  StatusIdentification.completed: 'completed',
};

const _$StatusAccountEnumMap = {
  StatusAccount.noStatus: 'noStatus',
  StatusAccount.suspension: 'suspension',
  StatusAccount.deleted: 'deleted',
};
