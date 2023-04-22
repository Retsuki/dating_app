// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrivateUser _$PrivateUserFromJson(Map<String, dynamic> json) {
  return _PrivateUser.fromJson(json);
}

/// @nodoc
mixin _$PrivateUser {
  @DateTimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get sei => throw _privateConstructorUsedError;
  String get mei => throw _privateConstructorUsedError;
  String get zipcode => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get building => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivateUserCopyWith<PrivateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateUserCopyWith<$Res> {
  factory $PrivateUserCopyWith(
          PrivateUser value, $Res Function(PrivateUser) then) =
      _$PrivateUserCopyWithImpl<$Res, PrivateUser>;
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String sei,
      String mei,
      String zipcode,
      String prefecture,
      String city,
      String street,
      String building});
}

/// @nodoc
class _$PrivateUserCopyWithImpl<$Res, $Val extends PrivateUser>
    implements $PrivateUserCopyWith<$Res> {
  _$PrivateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? sei = null,
    Object? mei = null,
    Object? zipcode = null,
    Object? prefecture = null,
    Object? city = null,
    Object? street = null,
    Object? building = null,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sei: null == sei
          ? _value.sei
          : sei // ignore: cast_nullable_to_non_nullable
              as String,
      mei: null == mei
          ? _value.mei
          : mei // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivateUserCopyWith<$Res>
    implements $PrivateUserCopyWith<$Res> {
  factory _$$_PrivateUserCopyWith(
          _$_PrivateUser value, $Res Function(_$_PrivateUser) then) =
      __$$_PrivateUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String sei,
      String mei,
      String zipcode,
      String prefecture,
      String city,
      String street,
      String building});
}

/// @nodoc
class __$$_PrivateUserCopyWithImpl<$Res>
    extends _$PrivateUserCopyWithImpl<$Res, _$_PrivateUser>
    implements _$$_PrivateUserCopyWith<$Res> {
  __$$_PrivateUserCopyWithImpl(
      _$_PrivateUser _value, $Res Function(_$_PrivateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? sei = null,
    Object? mei = null,
    Object? zipcode = null,
    Object? prefecture = null,
    Object? city = null,
    Object? street = null,
    Object? building = null,
  }) {
    return _then(_$_PrivateUser(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sei: null == sei
          ? _value.sei
          : sei // ignore: cast_nullable_to_non_nullable
              as String,
      mei: null == mei
          ? _value.mei
          : mei // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrivateUser implements _PrivateUser {
  const _$_PrivateUser(
      {@DateTimeTimestampConverter() this.createdAt,
      @DateTimeTimestampConverter() this.updatedAt,
      this.sei = '',
      this.mei = '',
      this.zipcode = '',
      this.prefecture = '',
      this.city = '',
      this.street = '',
      this.building = ''});

  factory _$_PrivateUser.fromJson(Map<String, dynamic> json) =>
      _$$_PrivateUserFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime? createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final String sei;
  @override
  @JsonKey()
  final String mei;
  @override
  @JsonKey()
  final String zipcode;
  @override
  @JsonKey()
  final String prefecture;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String building;

  @override
  String toString() {
    return 'PrivateUser(createdAt: $createdAt, updatedAt: $updatedAt, sei: $sei, mei: $mei, zipcode: $zipcode, prefecture: $prefecture, city: $city, street: $street, building: $building)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateUser &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sei, sei) || other.sei == sei) &&
            (identical(other.mei, mei) || other.mei == mei) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.building, building) ||
                other.building == building));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, updatedAt, sei, mei,
      zipcode, prefecture, city, street, building);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivateUserCopyWith<_$_PrivateUser> get copyWith =>
      __$$_PrivateUserCopyWithImpl<_$_PrivateUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivateUserToJson(
      this,
    );
  }
}

abstract class _PrivateUser implements PrivateUser {
  const factory _PrivateUser(
      {@DateTimeTimestampConverter() final DateTime? createdAt,
      @DateTimeTimestampConverter() final DateTime? updatedAt,
      final String sei,
      final String mei,
      final String zipcode,
      final String prefecture,
      final String city,
      final String street,
      final String building}) = _$_PrivateUser;

  factory _PrivateUser.fromJson(Map<String, dynamic> json) =
      _$_PrivateUser.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime? get updatedAt;
  @override
  String get sei;
  @override
  String get mei;
  @override
  String get zipcode;
  @override
  String get prefecture;
  @override
  String get city;
  @override
  String get street;
  @override
  String get building;
  @override
  @JsonKey(ignore: true)
  _$$_PrivateUserCopyWith<_$_PrivateUser> get copyWith =>
      throw _privateConstructorUsedError;
}
