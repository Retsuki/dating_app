// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'master_occupation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MasterOccupation _$MasterOccupationFromJson(Map<String, dynamic> json) {
  return _MasterOccupation.fromJson(json);
}

/// @nodoc
mixin _$MasterOccupation {
  @DateTimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterOccupationCopyWith<MasterOccupation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterOccupationCopyWith<$Res> {
  factory $MasterOccupationCopyWith(
          MasterOccupation value, $Res Function(MasterOccupation) then) =
      _$MasterOccupationCopyWithImpl<$Res>;
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String name});
}

/// @nodoc
class _$MasterOccupationCopyWithImpl<$Res>
    implements $MasterOccupationCopyWith<$Res> {
  _$MasterOccupationCopyWithImpl(this._value, this._then);

  final MasterOccupation _value;
  // ignore: unused_field
  final $Res Function(MasterOccupation) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MasterOccupationCopyWith<$Res>
    implements $MasterOccupationCopyWith<$Res> {
  factory _$$_MasterOccupationCopyWith(
          _$_MasterOccupation value, $Res Function(_$_MasterOccupation) then) =
      __$$_MasterOccupationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      String name});
}

/// @nodoc
class __$$_MasterOccupationCopyWithImpl<$Res>
    extends _$MasterOccupationCopyWithImpl<$Res>
    implements _$$_MasterOccupationCopyWith<$Res> {
  __$$_MasterOccupationCopyWithImpl(
      _$_MasterOccupation _value, $Res Function(_$_MasterOccupation) _then)
      : super(_value, (v) => _then(v as _$_MasterOccupation));

  @override
  _$_MasterOccupation get _value => super._value as _$_MasterOccupation;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_MasterOccupation(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MasterOccupation implements _MasterOccupation {
  const _$_MasterOccupation(
      {@DateTimeTimestampConverter() this.createdAt,
      @DateTimeTimestampConverter() this.updatedAt,
      this.name = ''});

  factory _$_MasterOccupation.fromJson(Map<String, dynamic> json) =>
      _$$_MasterOccupationFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime? createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'MasterOccupation(createdAt: $createdAt, updatedAt: $updatedAt, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterOccupation &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_MasterOccupationCopyWith<_$_MasterOccupation> get copyWith =>
      __$$_MasterOccupationCopyWithImpl<_$_MasterOccupation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterOccupationToJson(
      this,
    );
  }
}

abstract class _MasterOccupation implements MasterOccupation {
  const factory _MasterOccupation(
      {@DateTimeTimestampConverter() final DateTime? createdAt,
      @DateTimeTimestampConverter() final DateTime? updatedAt,
      final String name}) = _$_MasterOccupation;

  factory _MasterOccupation.fromJson(Map<String, dynamic> json) =
      _$_MasterOccupation.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime? get updatedAt;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MasterOccupationCopyWith<_$_MasterOccupation> get copyWith =>
      throw _privateConstructorUsedError;
}
