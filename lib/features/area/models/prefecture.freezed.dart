// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prefecture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Prefecture {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get english => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrefectureCopyWith<Prefecture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefectureCopyWith<$Res> {
  factory $PrefectureCopyWith(
          Prefecture value, $Res Function(Prefecture) then) =
      _$PrefectureCopyWithImpl<$Res>;
  $Res call({String id, String name, String english});
}

/// @nodoc
class _$PrefectureCopyWithImpl<$Res> implements $PrefectureCopyWith<$Res> {
  _$PrefectureCopyWithImpl(this._value, this._then);

  final Prefecture _value;
  // ignore: unused_field
  final $Res Function(Prefecture) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? english = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      english: english == freezed
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PrefectureCopyWith<$Res>
    implements $PrefectureCopyWith<$Res> {
  factory _$$_PrefectureCopyWith(
          _$_Prefecture value, $Res Function(_$_Prefecture) then) =
      __$$_PrefectureCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String english});
}

/// @nodoc
class __$$_PrefectureCopyWithImpl<$Res> extends _$PrefectureCopyWithImpl<$Res>
    implements _$$_PrefectureCopyWith<$Res> {
  __$$_PrefectureCopyWithImpl(
      _$_Prefecture _value, $Res Function(_$_Prefecture) _then)
      : super(_value, (v) => _then(v as _$_Prefecture));

  @override
  _$_Prefecture get _value => super._value as _$_Prefecture;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? english = freezed,
  }) {
    return _then(_$_Prefecture(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      english: english == freezed
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Prefecture implements _Prefecture {
  const _$_Prefecture(
      {required this.id, required this.name, required this.english});

  @override
  final String id;
  @override
  final String name;
  @override
  final String english;

  @override
  String toString() {
    return 'Prefecture(id: $id, name: $name, english: $english)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Prefecture &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.english, english));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(english));

  @JsonKey(ignore: true)
  @override
  _$$_PrefectureCopyWith<_$_Prefecture> get copyWith =>
      __$$_PrefectureCopyWithImpl<_$_Prefecture>(this, _$identity);
}

abstract class _Prefecture implements Prefecture {
  const factory _Prefecture(
      {required final String id,
      required final String name,
      required final String english}) = _$_Prefecture;

  @override
  String get id;
  @override
  String get name;
  @override
  String get english;
  @override
  @JsonKey(ignore: true)
  _$$_PrefectureCopyWith<_$_Prefecture> get copyWith =>
      throw _privateConstructorUsedError;
}
