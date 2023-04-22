// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PrivateUserWorryCopyWithImpl<$Res, PrivateUserWorry>;
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String text,
      int age,
      UserGender gender,
      WorryCategoryType type});
}

/// @nodoc
class _$PrivateUserWorryCopyWithImpl<$Res, $Val extends PrivateUserWorry>
    implements $PrivateUserWorryCopyWith<$Res> {
  _$PrivateUserWorryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? text = null,
    Object? age = null,
    Object? gender = null,
    Object? type = null,
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
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorryCategoryType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivateUserWorryCopyWith<$Res>
    implements $PrivateUserWorryCopyWith<$Res> {
  factory _$$_PrivateUserWorryCopyWith(
          _$_PrivateUserWorry value, $Res Function(_$_PrivateUserWorry) then) =
      __$$_PrivateUserWorryCopyWithImpl<$Res>;
  @override
  @useResult
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
    extends _$PrivateUserWorryCopyWithImpl<$Res, _$_PrivateUserWorry>
    implements _$$_PrivateUserWorryCopyWith<$Res> {
  __$$_PrivateUserWorryCopyWithImpl(
      _$_PrivateUserWorry _value, $Res Function(_$_PrivateUserWorry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? text = null,
    Object? age = null,
    Object? gender = null,
    Object? type = null,
  }) {
    return _then(_$_PrivateUserWorry(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      type: null == type
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, text, age, gender, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
