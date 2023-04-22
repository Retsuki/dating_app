// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PrefectureCopyWithImpl<$Res, Prefecture>;
  @useResult
  $Res call({String id, String name, String english});
}

/// @nodoc
class _$PrefectureCopyWithImpl<$Res, $Val extends Prefecture>
    implements $PrefectureCopyWith<$Res> {
  _$PrefectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? english = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      english: null == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrefectureCopyWith<$Res>
    implements $PrefectureCopyWith<$Res> {
  factory _$$_PrefectureCopyWith(
          _$_Prefecture value, $Res Function(_$_Prefecture) then) =
      __$$_PrefectureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String english});
}

/// @nodoc
class __$$_PrefectureCopyWithImpl<$Res>
    extends _$PrefectureCopyWithImpl<$Res, _$_Prefecture>
    implements _$$_PrefectureCopyWith<$Res> {
  __$$_PrefectureCopyWithImpl(
      _$_Prefecture _value, $Res Function(_$_Prefecture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? english = null,
  }) {
    return _then(_$_Prefecture(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      english: null == english
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.english, english) || other.english == english));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, english);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
