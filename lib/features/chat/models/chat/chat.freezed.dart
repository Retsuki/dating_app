// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  @DateTimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  Map<String, MembersInfo> get membersInfo =>
      throw _privateConstructorUsedError;
  String get latestMessage => throw _privateConstructorUsedError;
  String get lastSenderId => throw _privateConstructorUsedError;
  Map<String, bool> get readStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      List<String> members,
      Map<String, MembersInfo> membersInfo,
      String latestMessage,
      String lastSenderId,
      Map<String, bool> readStatus});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? members = null,
    Object? membersInfo = null,
    Object? latestMessage = null,
    Object? lastSenderId = null,
    Object? readStatus = null,
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
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      membersInfo: null == membersInfo
          ? _value.membersInfo
          : membersInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, MembersInfo>,
      latestMessage: null == latestMessage
          ? _value.latestMessage
          : latestMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: null == lastSenderId
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      readStatus: null == readStatus
          ? _value.readStatus
          : readStatus // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeTimestampConverter() DateTime? createdAt,
      @DateTimeTimestampConverter() DateTime? updatedAt,
      List<String> members,
      Map<String, MembersInfo> membersInfo,
      String latestMessage,
      String lastSenderId,
      Map<String, bool> readStatus});
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? members = null,
    Object? membersInfo = null,
    Object? latestMessage = null,
    Object? lastSenderId = null,
    Object? readStatus = null,
  }) {
    return _then(_$_Chat(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      membersInfo: null == membersInfo
          ? _value._membersInfo
          : membersInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, MembersInfo>,
      latestMessage: null == latestMessage
          ? _value.latestMessage
          : latestMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: null == lastSenderId
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      readStatus: null == readStatus
          ? _value._readStatus
          : readStatus // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {@DateTimeTimestampConverter() this.createdAt,
      @DateTimeTimestampConverter() this.updatedAt,
      required final List<String> members,
      required final Map<String, MembersInfo> membersInfo,
      required this.latestMessage,
      required this.lastSenderId,
      required final Map<String, bool> readStatus})
      : _members = members,
        _membersInfo = membersInfo,
        _readStatus = readStatus;

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  @DateTimeTimestampConverter()
  final DateTime? createdAt;
  @override
  @DateTimeTimestampConverter()
  final DateTime? updatedAt;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final Map<String, MembersInfo> _membersInfo;
  @override
  Map<String, MembersInfo> get membersInfo {
    if (_membersInfo is EqualUnmodifiableMapView) return _membersInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_membersInfo);
  }

  @override
  final String latestMessage;
  @override
  final String lastSenderId;
  final Map<String, bool> _readStatus;
  @override
  Map<String, bool> get readStatus {
    if (_readStatus is EqualUnmodifiableMapView) return _readStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_readStatus);
  }

  @override
  String toString() {
    return 'Chat(createdAt: $createdAt, updatedAt: $updatedAt, members: $members, membersInfo: $membersInfo, latestMessage: $latestMessage, lastSenderId: $lastSenderId, readStatus: $readStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._membersInfo, _membersInfo) &&
            (identical(other.latestMessage, latestMessage) ||
                other.latestMessage == latestMessage) &&
            (identical(other.lastSenderId, lastSenderId) ||
                other.lastSenderId == lastSenderId) &&
            const DeepCollectionEquality()
                .equals(other._readStatus, _readStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_membersInfo),
      latestMessage,
      lastSenderId,
      const DeepCollectionEquality().hash(_readStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(
      this,
    );
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {@DateTimeTimestampConverter() final DateTime? createdAt,
      @DateTimeTimestampConverter() final DateTime? updatedAt,
      required final List<String> members,
      required final Map<String, MembersInfo> membersInfo,
      required final String latestMessage,
      required final String lastSenderId,
      required final Map<String, bool> readStatus}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  @DateTimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @DateTimeTimestampConverter()
  DateTime? get updatedAt;
  @override
  List<String> get members;
  @override
  Map<String, MembersInfo> get membersInfo;
  @override
  String get latestMessage;
  @override
  String get lastSenderId;
  @override
  Map<String, bool> get readStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}

MembersInfo _$MembersInfoFromJson(Map<String, dynamic> json) {
  return _MembersInfo.fromJson(json);
}

/// @nodoc
mixin _$MembersInfo {
  String get mainImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersInfoCopyWith<MembersInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersInfoCopyWith<$Res> {
  factory $MembersInfoCopyWith(
          MembersInfo value, $Res Function(MembersInfo) then) =
      _$MembersInfoCopyWithImpl<$Res, MembersInfo>;
  @useResult
  $Res call({String mainImage, String name});
}

/// @nodoc
class _$MembersInfoCopyWithImpl<$Res, $Val extends MembersInfo>
    implements $MembersInfoCopyWith<$Res> {
  _$MembersInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImage = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersInfoCopyWith<$Res>
    implements $MembersInfoCopyWith<$Res> {
  factory _$$_MembersInfoCopyWith(
          _$_MembersInfo value, $Res Function(_$_MembersInfo) then) =
      __$$_MembersInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mainImage, String name});
}

/// @nodoc
class __$$_MembersInfoCopyWithImpl<$Res>
    extends _$MembersInfoCopyWithImpl<$Res, _$_MembersInfo>
    implements _$$_MembersInfoCopyWith<$Res> {
  __$$_MembersInfoCopyWithImpl(
      _$_MembersInfo _value, $Res Function(_$_MembersInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImage = null,
    Object? name = null,
  }) {
    return _then(_$_MembersInfo(
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MembersInfo implements _MembersInfo {
  const _$_MembersInfo({required this.mainImage, required this.name});

  factory _$_MembersInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MembersInfoFromJson(json);

  @override
  final String mainImage;
  @override
  final String name;

  @override
  String toString() {
    return 'MembersInfo(mainImage: $mainImage, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersInfo &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainImage, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersInfoCopyWith<_$_MembersInfo> get copyWith =>
      __$$_MembersInfoCopyWithImpl<_$_MembersInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembersInfoToJson(
      this,
    );
  }
}

abstract class _MembersInfo implements MembersInfo {
  const factory _MembersInfo(
      {required final String mainImage,
      required final String name}) = _$_MembersInfo;

  factory _MembersInfo.fromJson(Map<String, dynamic> json) =
      _$_MembersInfo.fromJson;

  @override
  String get mainImage;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MembersInfoCopyWith<_$_MembersInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
