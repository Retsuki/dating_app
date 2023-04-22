// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'worry_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorryCategory _$WorryCategoryFromJson(Map<String, dynamic> json) {
  return _WorryCategory.fromJson(json);
}

/// @nodoc
mixin _$WorryCategory {
  @DateTimeTimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  WorryCategoryType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorryCategoryCopyWith<WorryCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorryCategoryCopyWith<$Res> {
  factory $WorryCategoryCopyWith(
          WorryCategory value, $Res Function(WorryCategory) then) =
      _$WorryCategoryCopyWithImpl<$Res, WorryCategory>;
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      WorryCategoryType type,
      String name});
}

/// @nodoc
class _$WorryCategoryCopyWithImpl<$Res, $Val extends WorryCategory>
    implements $WorryCategoryCopyWith<$Res> {
  _$WorryCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? type = null,
    Object? name = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorryCategoryType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorryCategoryCopyWith<$Res>
    implements $WorryCategoryCopyWith<$Res> {
  factory _$$_WorryCategoryCopyWith(
          _$_WorryCategory value, $Res Function(_$_WorryCategory) then) =
      __$$_WorryCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      WorryCategoryType type,
      String name});
}

/// @nodoc
class __$$_WorryCategoryCopyWithImpl<$Res>
    extends _$WorryCategoryCopyWithImpl<$Res, _$_WorryCategory>
    implements _$$_WorryCategoryCopyWith<$Res> {
  __$$_WorryCategoryCopyWithImpl(
      _$_WorryCategory _value, $Res Function(_$_WorryCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_$_WorryCategory(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorryCategoryType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorryCategory implements _WorryCategory {
  const _$_WorryCategory(
      {@DateTimeTimestampConverter() required this.createdAt,
      @DateTimeTimestampConverter() required this.updatedAt,
      this.type = WorryCategoryType.other,
      required this.name});

  factory _$_WorryCategory.fromJson(Map<String, dynamic> json) =>
      _$$_WorryCategoryFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime updatedAt;
  @override
  @JsonKey()
  final WorryCategoryType type;
  @override
  final String name;

  @override
  String toString() {
    return 'WorryCategory(createdAt: $createdAt, updatedAt: $updatedAt, type: $type, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorryCategory &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, type, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorryCategoryCopyWith<_$_WorryCategory> get copyWith =>
      __$$_WorryCategoryCopyWithImpl<_$_WorryCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorryCategoryToJson(
      this,
    );
  }
}

abstract class _WorryCategory implements WorryCategory {
  const factory _WorryCategory(
      {@DateTimeTimestampConverter() required final DateTime createdAt,
      @DateTimeTimestampConverter() required final DateTime updatedAt,
      final WorryCategoryType type,
      required final String name}) = _$_WorryCategory;

  factory _WorryCategory.fromJson(Map<String, dynamic> json) =
      _$_WorryCategory.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime get updatedAt;
  @override
  WorryCategoryType get type;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_WorryCategoryCopyWith<_$_WorryCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
