// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_interest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MasterInterest _$MasterInterestFromJson(Map<String, dynamic> json) {
  return _MasterInterest.fromJson(json);
}

/// @nodoc
mixin _$MasterInterest {
  @DateTimeTimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isShow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterInterestCopyWith<MasterInterest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterInterestCopyWith<$Res> {
  factory $MasterInterestCopyWith(
          MasterInterest value, $Res Function(MasterInterest) then) =
      _$MasterInterestCopyWithImpl<$Res, MasterInterest>;
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      String name,
      bool isShow});
}

/// @nodoc
class _$MasterInterestCopyWithImpl<$Res, $Val extends MasterInterest>
    implements $MasterInterestCopyWith<$Res> {
  _$MasterInterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? name = null,
    Object? isShow = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasterInterestCopyWith<$Res>
    implements $MasterInterestCopyWith<$Res> {
  factory _$$_MasterInterestCopyWith(
          _$_MasterInterest value, $Res Function(_$_MasterInterest) then) =
      __$$_MasterInterestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      String name,
      bool isShow});
}

/// @nodoc
class __$$_MasterInterestCopyWithImpl<$Res>
    extends _$MasterInterestCopyWithImpl<$Res, _$_MasterInterest>
    implements _$$_MasterInterestCopyWith<$Res> {
  __$$_MasterInterestCopyWithImpl(
      _$_MasterInterest _value, $Res Function(_$_MasterInterest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? name = null,
    Object? isShow = null,
  }) {
    return _then(_$_MasterInterest(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MasterInterest implements _MasterInterest {
  const _$_MasterInterest(
      {@DateTimeTimestampConverter() required this.createdAt,
      @DateTimeTimestampConverter() required this.updatedAt,
      required this.name,
      required this.isShow});

  factory _$_MasterInterest.fromJson(Map<String, dynamic> json) =>
      _$$_MasterInterestFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime updatedAt;
  @override
  final String name;
  @override
  final bool isShow;

  @override
  String toString() {
    return 'MasterInterest(createdAt: $createdAt, updatedAt: $updatedAt, name: $name, isShow: $isShow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterInterest &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isShow, isShow) || other.isShow == isShow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, name, isShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterInterestCopyWith<_$_MasterInterest> get copyWith =>
      __$$_MasterInterestCopyWithImpl<_$_MasterInterest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterInterestToJson(
      this,
    );
  }
}

abstract class _MasterInterest implements MasterInterest {
  const factory _MasterInterest(
      {@DateTimeTimestampConverter() required final DateTime createdAt,
      @DateTimeTimestampConverter() required final DateTime updatedAt,
      required final String name,
      required final bool isShow}) = _$_MasterInterest;

  factory _MasterInterest.fromJson(Map<String, dynamic> json) =
      _$_MasterInterest.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime get updatedAt;
  @override
  String get name;
  @override
  bool get isShow;
  @override
  @JsonKey(ignore: true)
  _$$_MasterInterestCopyWith<_$_MasterInterest> get copyWith =>
      throw _privateConstructorUsedError;
}
