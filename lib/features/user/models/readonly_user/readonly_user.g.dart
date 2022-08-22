// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'readonly_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadonlyUser _$$_ReadonlyUserFromJson(Map<String, dynamic> json) =>
    _$_ReadonlyUser(
      createdAt: const DateTimeTimestampConverter()
          .fromJson(json['createdAt'] as Object),
      updatedAt: const DateTimeTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      statusSubscription: $enumDecodeNullable(
              _$StatusSubscriptionEnumMap, json['statusSubscription']) ??
          StatusSubscription.noStatus,
      statusIdentification: $enumDecodeNullable(
              _$StatusIdentificationEnumMap, json['statusIdentification']) ??
          StatusIdentification.noStatus,
      statusAccount:
          $enumDecodeNullable(_$StatusAccountEnumMap, json['statusAccount']) ??
              StatusAccount.noStatus,
    );

Map<String, dynamic> _$$_ReadonlyUserToJson(_$_ReadonlyUser instance) =>
    <String, dynamic>{
      'createdAt':
          const DateTimeTimestampConverter().toJson(instance.createdAt),
      'updatedAt':
          const DateTimeTimestampConverter().toJson(instance.updatedAt),
      'statusSubscription':
          _$StatusSubscriptionEnumMap[instance.statusSubscription]!,
      'statusIdentification':
          _$StatusIdentificationEnumMap[instance.statusIdentification]!,
      'statusAccount': _$StatusAccountEnumMap[instance.statusAccount]!,
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
