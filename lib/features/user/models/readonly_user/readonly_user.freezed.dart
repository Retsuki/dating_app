// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  StatusSubscription? get statusSubscription =>
      throw _privateConstructorUsedError;
  StatusIdentification? get statusIdentification =>
      throw _privateConstructorUsedError;
  StatusAccount? get statusAccount => throw _privateConstructorUsedError;
  bool get isCompletedSetup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadonlyUserCopyWith<ReadonlyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadonlyUserCopyWith<$Res> {
  factory $ReadonlyUserCopyWith(
          ReadonlyUser value, $Res Function(ReadonlyUser) then) =
      _$ReadonlyUserCopyWithImpl<$Res, ReadonlyUser>;
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      StatusSubscription? statusSubscription,
      StatusIdentification? statusIdentification,
      StatusAccount? statusAccount,
      bool isCompletedSetup});
}

/// @nodoc
class _$ReadonlyUserCopyWithImpl<$Res, $Val extends ReadonlyUser>
    implements $ReadonlyUserCopyWith<$Res> {
  _$ReadonlyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? statusSubscription = freezed,
    Object? statusIdentification = freezed,
    Object? statusAccount = freezed,
    Object? isCompletedSetup = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusSubscription: freezed == statusSubscription
          ? _value.statusSubscription
          : statusSubscription // ignore: cast_nullable_to_non_nullable
              as StatusSubscription?,
      statusIdentification: freezed == statusIdentification
          ? _value.statusIdentification
          : statusIdentification // ignore: cast_nullable_to_non_nullable
              as StatusIdentification?,
      statusAccount: freezed == statusAccount
          ? _value.statusAccount
          : statusAccount // ignore: cast_nullable_to_non_nullable
              as StatusAccount?,
      isCompletedSetup: null == isCompletedSetup
          ? _value.isCompletedSetup
          : isCompletedSetup // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadonlyUserCopyWith<$Res>
    implements $ReadonlyUserCopyWith<$Res> {
  factory _$$_ReadonlyUserCopyWith(
          _$_ReadonlyUser value, $Res Function(_$_ReadonlyUser) then) =
      __$$_ReadonlyUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      StatusSubscription? statusSubscription,
      StatusIdentification? statusIdentification,
      StatusAccount? statusAccount,
      bool isCompletedSetup});
}

/// @nodoc
class __$$_ReadonlyUserCopyWithImpl<$Res>
    extends _$ReadonlyUserCopyWithImpl<$Res, _$_ReadonlyUser>
    implements _$$_ReadonlyUserCopyWith<$Res> {
  __$$_ReadonlyUserCopyWithImpl(
      _$_ReadonlyUser _value, $Res Function(_$_ReadonlyUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? statusSubscription = freezed,
    Object? statusIdentification = freezed,
    Object? statusAccount = freezed,
    Object? isCompletedSetup = null,
  }) {
    return _then(_$_ReadonlyUser(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusSubscription: freezed == statusSubscription
          ? _value.statusSubscription
          : statusSubscription // ignore: cast_nullable_to_non_nullable
              as StatusSubscription?,
      statusIdentification: freezed == statusIdentification
          ? _value.statusIdentification
          : statusIdentification // ignore: cast_nullable_to_non_nullable
              as StatusIdentification?,
      statusAccount: freezed == statusAccount
          ? _value.statusAccount
          : statusAccount // ignore: cast_nullable_to_non_nullable
              as StatusAccount?,
      isCompletedSetup: null == isCompletedSetup
          ? _value.isCompletedSetup
          : isCompletedSetup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadonlyUser implements _ReadonlyUser {
  _$_ReadonlyUser(
      {@DateTimeTimestampConverter() required this.createdAt,
      @DateTimeTimestampConverter() required this.updatedAt,
      this.statusSubscription = StatusSubscription.noStatus,
      this.statusIdentification = StatusIdentification.noStatus,
      this.statusAccount = StatusAccount.noStatus,
      this.isCompletedSetup = false});

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
  final StatusSubscription? statusSubscription;
  @override
  @JsonKey()
  final StatusIdentification? statusIdentification;
  @override
  @JsonKey()
  final StatusAccount? statusAccount;
  @override
  @JsonKey()
  final bool isCompletedSetup;

  @override
  String toString() {
    return 'ReadonlyUser(createdAt: $createdAt, updatedAt: $updatedAt, statusSubscription: $statusSubscription, statusIdentification: $statusIdentification, statusAccount: $statusAccount, isCompletedSetup: $isCompletedSetup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadonlyUser &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.statusSubscription, statusSubscription) ||
                other.statusSubscription == statusSubscription) &&
            (identical(other.statusIdentification, statusIdentification) ||
                other.statusIdentification == statusIdentification) &&
            (identical(other.statusAccount, statusAccount) ||
                other.statusAccount == statusAccount) &&
            (identical(other.isCompletedSetup, isCompletedSetup) ||
                other.isCompletedSetup == isCompletedSetup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      updatedAt,
      statusSubscription,
      statusIdentification,
      statusAccount,
      isCompletedSetup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  factory _ReadonlyUser(
      {@DateTimeTimestampConverter() required final DateTime createdAt,
      @DateTimeTimestampConverter() required final DateTime updatedAt,
      final StatusSubscription? statusSubscription,
      final StatusIdentification? statusIdentification,
      final StatusAccount? statusAccount,
      final bool isCompletedSetup}) = _$_ReadonlyUser;

  factory _ReadonlyUser.fromJson(Map<String, dynamic> json) =
      _$_ReadonlyUser.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime get updatedAt;
  @override
  StatusSubscription? get statusSubscription;
  @override
  StatusIdentification? get statusIdentification;
  @override
  StatusAccount? get statusAccount;
  @override
  bool get isCompletedSetup;
  @override
  @JsonKey(ignore: true)
  _$$_ReadonlyUserCopyWith<_$_ReadonlyUser> get copyWith =>
      throw _privateConstructorUsedError;
}
