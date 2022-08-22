// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'readonly_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadonlyUser _$ReadonlyUserFromJson(Map<String, dynamic> json) {
  return _ReadonlyUser.fromJson(json);
}

/// @nodoc
mixin _$ReadonlyUser {
  @DateTimeTimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  StatusSubscription get statusSubscription =>
      throw _privateConstructorUsedError;
  StatusIdentification get statusIdentification =>
      throw _privateConstructorUsedError;
  StatusAccount get statusAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadonlyUserCopyWith<ReadonlyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadonlyUserCopyWith<$Res> {
  factory $ReadonlyUserCopyWith(
          ReadonlyUser value, $Res Function(ReadonlyUser) then) =
      _$ReadonlyUserCopyWithImpl<$Res>;
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      StatusSubscription statusSubscription,
      StatusIdentification statusIdentification,
      StatusAccount statusAccount});
}

/// @nodoc
class _$ReadonlyUserCopyWithImpl<$Res> implements $ReadonlyUserCopyWith<$Res> {
  _$ReadonlyUserCopyWithImpl(this._value, this._then);

  final ReadonlyUser _value;
  // ignore: unused_field
  final $Res Function(ReadonlyUser) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusSubscription = freezed,
    Object? statusIdentification = freezed,
    Object? statusAccount = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusSubscription: statusSubscription == freezed
          ? _value.statusSubscription
          : statusSubscription // ignore: cast_nullable_to_non_nullable
              as StatusSubscription,
      statusIdentification: statusIdentification == freezed
          ? _value.statusIdentification
          : statusIdentification // ignore: cast_nullable_to_non_nullable
              as StatusIdentification,
      statusAccount: statusAccount == freezed
          ? _value.statusAccount
          : statusAccount // ignore: cast_nullable_to_non_nullable
              as StatusAccount,
    ));
  }
}

/// @nodoc
abstract class _$$_ReadonlyUserCopyWith<$Res>
    implements $ReadonlyUserCopyWith<$Res> {
  factory _$$_ReadonlyUserCopyWith(
          _$_ReadonlyUser value, $Res Function(_$_ReadonlyUser) then) =
      __$$_ReadonlyUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      StatusSubscription statusSubscription,
      StatusIdentification statusIdentification,
      StatusAccount statusAccount});
}

/// @nodoc
class __$$_ReadonlyUserCopyWithImpl<$Res>
    extends _$ReadonlyUserCopyWithImpl<$Res>
    implements _$$_ReadonlyUserCopyWith<$Res> {
  __$$_ReadonlyUserCopyWithImpl(
      _$_ReadonlyUser _value, $Res Function(_$_ReadonlyUser) _then)
      : super(_value, (v) => _then(v as _$_ReadonlyUser));

  @override
  _$_ReadonlyUser get _value => super._value as _$_ReadonlyUser;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusSubscription = freezed,
    Object? statusIdentification = freezed,
    Object? statusAccount = freezed,
  }) {
    return _then(_$_ReadonlyUser(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusSubscription: statusSubscription == freezed
          ? _value.statusSubscription
          : statusSubscription // ignore: cast_nullable_to_non_nullable
              as StatusSubscription,
      statusIdentification: statusIdentification == freezed
          ? _value.statusIdentification
          : statusIdentification // ignore: cast_nullable_to_non_nullable
              as StatusIdentification,
      statusAccount: statusAccount == freezed
          ? _value.statusAccount
          : statusAccount // ignore: cast_nullable_to_non_nullable
              as StatusAccount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadonlyUser implements _ReadonlyUser {
  const _$_ReadonlyUser(
      {@DateTimeTimestampConverter() required this.createdAt,
      @DateTimeTimestampConverter() required this.updatedAt,
      required this.statusSubscription = StatusSubscription.noStatus,
      required this.statusIdentification = StatusIdentification.noStatus,
      required this.statusAccount = StatusAccount.noStatus});

  factory _$_ReadonlyUser.fromJson(Map<String, dynamic> json) =>
      _$$_ReadonlyUserFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime updatedAt;
  @override
  @JsonKey()
  final StatusSubscription statusSubscription;
  @override
  @JsonKey()
  final StatusIdentification statusIdentification;
  @override
  @JsonKey()
  final StatusAccount statusAccount;

  @override
  String toString() {
    return 'ReadonlyUser(createdAt: $createdAt, updatedAt: $updatedAt, statusSubscription: $statusSubscription, statusIdentification: $statusIdentification, statusAccount: $statusAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadonlyUser &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.statusSubscription, statusSubscription) &&
            const DeepCollectionEquality()
                .equals(other.statusIdentification, statusIdentification) &&
            const DeepCollectionEquality()
                .equals(other.statusAccount, statusAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(statusSubscription),
      const DeepCollectionEquality().hash(statusIdentification),
      const DeepCollectionEquality().hash(statusAccount));

  @JsonKey(ignore: true)
  @override
  _$$_ReadonlyUserCopyWith<_$_ReadonlyUser> get copyWith =>
      __$$_ReadonlyUserCopyWithImpl<_$_ReadonlyUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadonlyUserToJson(
      this,
    );
  }
}

abstract class _ReadonlyUser implements ReadonlyUser {
  const factory _ReadonlyUser(
      {@DateTimeTimestampConverter() required final DateTime createdAt,
      @DateTimeTimestampConverter() required final DateTime updatedAt,
      required final StatusSubscription statusSubscription,
      required final StatusIdentification statusIdentification,
      required final StatusAccount statusAccount}) = _$_ReadonlyUser;

  factory _ReadonlyUser.fromJson(Map<String, dynamic> json) =
      _$_ReadonlyUser.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime get updatedAt;
  @override
  StatusSubscription get statusSubscription;
  @override
  StatusIdentification get statusIdentification;
  @override
  StatusAccount get statusAccount;
  @override
  @JsonKey(ignore: true)
  _$$_ReadonlyUserCopyWith<_$_ReadonlyUser> get copyWith =>
      throw _privateConstructorUsedError;
}
