// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'private_user_worry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrivateUserWorry _$PrivateUserWorryFromJson(Map<String, dynamic> json) {
  return _PrivateUserWorry.fromJson(json);
}

/// @nodoc
mixin _$PrivateUserWorry {
  @DateTimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  UserGender get gender => throw _privateConstructorUsedError;
  WorryCategoryType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivateUserWorryCopyWith<PrivateUserWorry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateUserWorryCopyWith<$Res> {
  factory $PrivateUserWorryCopyWith(
          PrivateUserWorry value, $Res Function(PrivateUserWorry) then) =
      _$PrivateUserWorryCopyWithImpl<$Res>;
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String text,
      int age,
      UserGender gender,
      WorryCategoryType type});
}

/// @nodoc
class _$PrivateUserWorryCopyWithImpl<$Res>
    implements $PrivateUserWorryCopyWith<$Res> {
  _$PrivateUserWorryCopyWithImpl(this._value, this._then);

  final PrivateUserWorry _value;
  // ignore: unused_field
  final $Res Function(PrivateUserWorry) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? text = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? type = freezed,
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
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorryCategoryType,
    ));
  }
}

/// @nodoc
abstract class _$$_PrivateUserWorryCopyWith<$Res>
    implements $PrivateUserWorryCopyWith<$Res> {
  factory _$$_PrivateUserWorryCopyWith(
          _$_PrivateUserWorry value, $Res Function(_$_PrivateUserWorry) then) =
      __$$_PrivateUserWorryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String text,
      int age,
      UserGender gender,
      WorryCategoryType type});
}

/// @nodoc
class __$$_PrivateUserWorryCopyWithImpl<$Res>
    extends _$PrivateUserWorryCopyWithImpl<$Res>
    implements _$$_PrivateUserWorryCopyWith<$Res> {
  __$$_PrivateUserWorryCopyWithImpl(
      _$_PrivateUserWorry _value, $Res Function(_$_PrivateUserWorry) _then)
      : super(_value, (v) => _then(v as _$_PrivateUserWorry));

  @override
  _$_PrivateUserWorry get _value => super._value as _$_PrivateUserWorry;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? text = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_PrivateUserWorry(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorryCategoryType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrivateUserWorry implements _PrivateUserWorry {
  const _$_PrivateUserWorry(
      {@DateTimeTimestampConverter() this.createdAt,
      @DateTimeTimestampConverter() this.updatedAt,
      required this.text,
      required this.age,
      this.gender = UserGender.other,
      this.type = WorryCategoryType.other});

  factory _$_PrivateUserWorry.fromJson(Map<String, dynamic> json) =>
      _$$_PrivateUserWorryFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime? createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime? updatedAt;
  @override
  final String text;
  @override
  final int age;
  @override
  @JsonKey()
  final UserGender gender;
  @override
  @JsonKey()
  final WorryCategoryType type;

  @override
  String toString() {
    return 'PrivateUserWorry(createdAt: $createdAt, updatedAt: $updatedAt, text: $text, age: $age, gender: $gender, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateUserWorry &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_PrivateUserWorryCopyWith<_$_PrivateUserWorry> get copyWith =>
      __$$_PrivateUserWorryCopyWithImpl<_$_PrivateUserWorry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivateUserWorryToJson(
      this,
    );
  }
}

abstract class _PrivateUserWorry implements PrivateUserWorry {
  const factory _PrivateUserWorry(
      {@DateTimeTimestampConverter() final DateTime? createdAt,
      @DateTimeTimestampConverter() final DateTime? updatedAt,
      required final String text,
      required final int age,
      final UserGender gender,
      final WorryCategoryType type}) = _$_PrivateUserWorry;

  factory _PrivateUserWorry.fromJson(Map<String, dynamic> json) =
      _$_PrivateUserWorry.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime? get updatedAt;
  @override
  String get text;
  @override
  int get age;
  @override
  UserGender get gender;
  @override
  WorryCategoryType get type;
  @override
  @JsonKey(ignore: true)
  _$$_PrivateUserWorryCopyWith<_$_PrivateUserWorry> get copyWith =>
      throw _privateConstructorUsedError;
}
