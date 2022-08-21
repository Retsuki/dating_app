// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Interest _$InterestFromJson(Map<String, dynamic> json) {
  return _Interest.fromJson(json);
}

/// @nodoc
mixin _$Interest {
  @DateTimeTimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isShow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestCopyWith<Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCopyWith<$Res> {
  factory $InterestCopyWith(Interest value, $Res Function(Interest) then) =
      _$InterestCopyWithImpl<$Res>;
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      String name,
      bool isShow});
}

/// @nodoc
class _$InterestCopyWithImpl<$Res> implements $InterestCopyWith<$Res> {
  _$InterestCopyWithImpl(this._value, this._then);

  final Interest _value;
  // ignore: unused_field
  final $Res Function(Interest) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? isShow = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isShow: isShow == freezed
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InterestCopyWith<$Res> implements $InterestCopyWith<$Res> {
  factory _$$_InterestCopyWith(
          _$_Interest value, $Res Function(_$_Interest) then) =
      __$$_InterestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DateTimeTimestampConverter() DateTime createdAt,
      @DateTimeTimestampConverter() DateTime updatedAt,
      String name,
      bool isShow});
}

/// @nodoc
class __$$_InterestCopyWithImpl<$Res> extends _$InterestCopyWithImpl<$Res>
    implements _$$_InterestCopyWith<$Res> {
  __$$_InterestCopyWithImpl(
      _$_Interest _value, $Res Function(_$_Interest) _then)
      : super(_value, (v) => _then(v as _$_Interest));

  @override
  _$_Interest get _value => super._value as _$_Interest;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? isShow = freezed,
  }) {
    return _then(_$_Interest(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isShow: isShow == freezed
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Interest implements _Interest {
  const _$_Interest(
      {@DateTimeTimestampConverter() required this.createdAt,
      @DateTimeTimestampConverter() required this.updatedAt,
      required this.name,
      required this.isShow});

  factory _$_Interest.fromJson(Map<String, dynamic> json) =>
      _$$_InterestFromJson(json);

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
    return 'Interest(createdAt: $createdAt, updatedAt: $updatedAt, name: $name, isShow: $isShow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Interest &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isShow, isShow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isShow));

  @JsonKey(ignore: true)
  @override
  _$$_InterestCopyWith<_$_Interest> get copyWith =>
      __$$_InterestCopyWithImpl<_$_Interest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterestToJson(
      this,
    );
  }
}

abstract class _Interest implements Interest {
  const factory _Interest(
      {@DateTimeTimestampConverter() required final DateTime createdAt,
      @DateTimeTimestampConverter() required final DateTime updatedAt,
      required final String name,
      required final bool isShow}) = _$_Interest;

  factory _Interest.fromJson(Map<String, dynamic> json) = _$_Interest.fromJson;

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
  _$$_InterestCopyWith<_$_Interest> get copyWith =>
      throw _privateConstructorUsedError;
}
