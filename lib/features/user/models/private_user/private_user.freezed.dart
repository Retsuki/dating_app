// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$PrivateUserCopyWithImpl<$Res>;
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String sei,
      String mei,
      String prefecture,
      String city,
      String street,
      String building});
}

/// @nodoc
class _$PrivateUserCopyWithImpl<$Res> implements $PrivateUserCopyWith<$Res> {
  _$PrivateUserCopyWithImpl(this._value, this._then);

  final PrivateUser _value;
  // ignore: unused_field
  final $Res Function(PrivateUser) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? sei = freezed,
    Object? mei = freezed,
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? building = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sei: sei == freezed
          ? _value.sei
          : sei // ignore: cast_nullable_to_non_nullable
              as String,
      mei: mei == freezed
          ? _value.mei
          : mei // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PrivateUserCopyWith<$Res>
    implements $PrivateUserCopyWith<$Res> {
  factory _$$_PrivateUserCopyWith(
          _$_PrivateUser value, $Res Function(_$_PrivateUser) then) =
      __$$_PrivateUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String sei,
      String mei,
      String prefecture,
      String city,
      String street,
      String building});
}

/// @nodoc
class __$$_PrivateUserCopyWithImpl<$Res> extends _$PrivateUserCopyWithImpl<$Res>
    implements _$$_PrivateUserCopyWith<$Res> {
  __$$_PrivateUserCopyWithImpl(
      _$_PrivateUser _value, $Res Function(_$_PrivateUser) _then)
      : super(_value, (v) => _then(v as _$_PrivateUser));

  @override
  _$_PrivateUser get _value => super._value as _$_PrivateUser;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? sei = freezed,
    Object? mei = freezed,
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? building = freezed,
  }) {
    return _then(_$_PrivateUser(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sei: sei == freezed
          ? _value.sei
          : sei // ignore: cast_nullable_to_non_nullable
              as String,
      mei: mei == freezed
          ? _value.mei
          : mei // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
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
    return 'PrivateUser(createdAt: $createdAt, updatedAt: $updatedAt, sei: $sei, mei: $mei, prefecture: $prefecture, city: $city, street: $street, building: $building)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateUser &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.sei, sei) &&
            const DeepCollectionEquality().equals(other.mei, mei) &&
            const DeepCollectionEquality()
                .equals(other.prefecture, prefecture) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.building, building));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(sei),
      const DeepCollectionEquality().hash(mei),
      const DeepCollectionEquality().hash(prefecture),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(building));

  @JsonKey(ignore: true)
  @override
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
