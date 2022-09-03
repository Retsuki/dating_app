// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @DateTimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @StringTimestampConverter()
  String? get birthday => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  UserGender get gender => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError;
  String? get mainImage => throw _privateConstructorUsedError;
  String? get subImage1 => throw _privateConstructorUsedError;
  String? get subImage2 => throw _privateConstructorUsedError;
  String? get subImage3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      @StringTimestampConverter() String? birthday,
      String nickName,
      String prefecture,
      bool isOnline,
      UserGender gender,
      List<String>? interests,
      String? mainImage,
      String? subImage1,
      String? subImage2,
      String? subImage3});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? birthday = freezed,
    Object? nickName = freezed,
    Object? prefecture = freezed,
    Object? isOnline = freezed,
    Object? gender = freezed,
    Object? interests = freezed,
    Object? mainImage = freezed,
    Object? subImage1 = freezed,
    Object? subImage2 = freezed,
    Object? subImage3 = freezed,
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
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      interests: interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mainImage: mainImage == freezed
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage1: subImage1 == freezed
          ? _value.subImage1
          : subImage1 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage2: subImage2 == freezed
          ? _value.subImage2
          : subImage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage3: subImage3 == freezed
          ? _value.subImage3
          : subImage3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      @StringTimestampConverter() String? birthday,
      String nickName,
      String prefecture,
      bool isOnline,
      UserGender gender,
      List<String>? interests,
      String? mainImage,
      String? subImage1,
      String? subImage2,
      String? subImage3});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? birthday = freezed,
    Object? nickName = freezed,
    Object? prefecture = freezed,
    Object? isOnline = freezed,
    Object? gender = freezed,
    Object? interests = freezed,
    Object? mainImage = freezed,
    Object? subImage1 = freezed,
    Object? subImage2 = freezed,
    Object? subImage3 = freezed,
  }) {
    return _then(_$_User(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      interests: interests == freezed
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mainImage: mainImage == freezed
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage1: subImage1 == freezed
          ? _value.subImage1
          : subImage1 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage2: subImage2 == freezed
          ? _value.subImage2
          : subImage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage3: subImage3 == freezed
          ? _value.subImage3
          : subImage3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@DateTimeTimestampConverter() this.createdAt,
      @DateTimeTimestampConverter() this.updatedAt,
      @StringTimestampConverter() this.birthday,
      this.nickName = '',
      this.prefecture = '',
      this.isOnline = true,
      this.gender = UserGender.other,
      final List<String>? interests,
      this.mainImage,
      this.subImage1,
      this.subImage2,
      this.subImage3})
      : _interests = interests;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime? createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime? updatedAt;
  @override
  @StringTimestampConverter()
  final String? birthday;
  @override
  @JsonKey()
  final String nickName;
  @override
  @JsonKey()
  final String prefecture;
  @override
  @JsonKey()
  final bool isOnline;
  @override
  @JsonKey()
  final UserGender gender;
  final List<String>? _interests;
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mainImage;
  @override
  final String? subImage1;
  @override
  final String? subImage2;
  @override
  final String? subImage3;

  @override
  String toString() {
    return 'User(createdAt: $createdAt, updatedAt: $updatedAt, birthday: $birthday, nickName: $nickName, prefecture: $prefecture, isOnline: $isOnline, gender: $gender, interests: $interests, mainImage: $mainImage, subImage1: $subImage1, subImage2: $subImage2, subImage3: $subImage3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.nickName, nickName) &&
            const DeepCollectionEquality()
                .equals(other.prefecture, prefecture) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality().equals(other.mainImage, mainImage) &&
            const DeepCollectionEquality().equals(other.subImage1, subImage1) &&
            const DeepCollectionEquality().equals(other.subImage2, subImage2) &&
            const DeepCollectionEquality().equals(other.subImage3, subImage3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(nickName),
      const DeepCollectionEquality().hash(prefecture),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(_interests),
      const DeepCollectionEquality().hash(mainImage),
      const DeepCollectionEquality().hash(subImage1),
      const DeepCollectionEquality().hash(subImage2),
      const DeepCollectionEquality().hash(subImage3));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@DateTimeTimestampConverter() final DateTime? createdAt,
      @DateTimeTimestampConverter() final DateTime? updatedAt,
      @StringTimestampConverter() final String? birthday,
      final String nickName,
      final String prefecture,
      final bool isOnline,
      final UserGender gender,
      final List<String>? interests,
      final String? mainImage,
      final String? subImage1,
      final String? subImage2,
      final String? subImage3}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime? get updatedAt;
  @override
  @StringTimestampConverter()
  String? get birthday;
  @override
  String get nickName;
  @override
  String get prefecture;
  @override
  bool get isOnline;
  @override
  UserGender get gender;
  @override
  List<String>? get interests;
  @override
  String? get mainImage;
  @override
  String? get subImage1;
  @override
  String? get subImage2;
  @override
  String? get subImage3;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
