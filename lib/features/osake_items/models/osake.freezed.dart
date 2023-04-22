// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Osake _$OsakeFromJson(Map<String, dynamic> json) {
  return _Osake.fromJson(json);
}

/// @nodoc
mixin _$Osake {
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OsakeCopyWith<Osake> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsakeCopyWith<$Res> {
  factory $OsakeCopyWith(Osake value, $Res Function(Osake) then) =
      _$OsakeCopyWithImpl<$Res, Osake>;
  @useResult
  $Res call({String name, int price, String image});
}

/// @nodoc
class _$OsakeCopyWithImpl<$Res, $Val extends Osake>
    implements $OsakeCopyWith<$Res> {
  _$OsakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OsakeCopyWith<$Res> implements $OsakeCopyWith<$Res> {
  factory _$$_OsakeCopyWith(_$_Osake value, $Res Function(_$_Osake) then) =
      __$$_OsakeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int price, String image});
}

/// @nodoc
class __$$_OsakeCopyWithImpl<$Res> extends _$OsakeCopyWithImpl<$Res, _$_Osake>
    implements _$$_OsakeCopyWith<$Res> {
  __$$_OsakeCopyWithImpl(_$_Osake _value, $Res Function(_$_Osake) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_$_Osake(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Osake implements _Osake {
  const _$_Osake(
      {required this.name, required this.price, required this.image});

  factory _$_Osake.fromJson(Map<String, dynamic> json) =>
      _$$_OsakeFromJson(json);

  @override
  final String name;
  @override
  final int price;
  @override
  final String image;

  @override
  String toString() {
    return 'Osake(name: $name, price: $price, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Osake &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OsakeCopyWith<_$_Osake> get copyWith =>
      __$$_OsakeCopyWithImpl<_$_Osake>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OsakeToJson(
      this,
    );
  }
}

abstract class _Osake implements Osake {
  const factory _Osake(
      {required final String name,
      required final int price,
      required final String image}) = _$_Osake;

  factory _Osake.fromJson(Map<String, dynamic> json) = _$_Osake.fromJson;

  @override
  String get name;
  @override
  int get price;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_OsakeCopyWith<_$_Osake> get copyWith =>
      throw _privateConstructorUsedError;
}
