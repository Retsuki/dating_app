// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  int get height => throw _privateConstructorUsedError;
  String get occupation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
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
      String? subImage3,
      int height,
      String occupation});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? birthday = freezed,
    Object? nickName = null,
    Object? prefecture = null,
    Object? isOnline = null,
    Object? gender = null,
    Object? interests = freezed,
    Object? mainImage = freezed,
    Object? subImage1 = freezed,
    Object? subImage2 = freezed,
    Object? subImage3 = freezed,
    Object? height = null,
    Object? occupation = null,
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
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage1: freezed == subImage1
          ? _value.subImage1
          : subImage1 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage2: freezed == subImage2
          ? _value.subImage2
          : subImage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage3: freezed == subImage3
          ? _value.subImage3
          : subImage3 // ignore: cast_nullable_to_non_nullable
              as String?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
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
      String? subImage3,
      int height,
      String occupation});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? birthday = freezed,
    Object? nickName = null,
    Object? prefecture = null,
    Object? isOnline = null,
    Object? gender = null,
    Object? interests = freezed,
    Object? mainImage = freezed,
    Object? subImage1 = freezed,
    Object? subImage2 = freezed,
    Object? subImage3 = freezed,
    Object? height = null,
    Object? occupation = null,
  }) {
    return _then(_$_User(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage1: freezed == subImage1
          ? _value.subImage1
          : subImage1 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage2: freezed == subImage2
          ? _value.subImage2
          : subImage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      subImage3: freezed == subImage3
          ? _value.subImage3
          : subImage3 // ignore: cast_nullable_to_non_nullable
              as String?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.subImage3,
      this.height = 0,
      this.occupation = ''})
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
    if (_interests is EqualUnmodifiableListView) return _interests;
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
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final String occupation;

  @override
  String toString() {
    return 'User(createdAt: $createdAt, updatedAt: $updatedAt, birthday: $birthday, nickName: $nickName, prefecture: $prefecture, isOnline: $isOnline, gender: $gender, interests: $interests, mainImage: $mainImage, subImage1: $subImage1, subImage2: $subImage2, subImage3: $subImage3, height: $height, occupation: $occupation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            (identical(other.subImage1, subImage1) ||
                other.subImage1 == subImage1) &&
            (identical(other.subImage2, subImage2) ||
                other.subImage2 == subImage2) &&
            (identical(other.subImage3, subImage3) ||
                other.subImage3 == subImage3) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      updatedAt,
      birthday,
      nickName,
      prefecture,
      isOnline,
      gender,
      const DeepCollectionEquality().hash(_interests),
      mainImage,
      subImage1,
      subImage2,
      subImage3,
      height,
      occupation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final String? subImage3,
      final int height,
      final String occupation}) = _$_User;

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
  int get height;
  @override
  String get occupation;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
