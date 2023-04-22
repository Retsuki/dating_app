// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatMessageState {
  String? get chatId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessageStateCopyWith<ChatMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageStateCopyWith<$Res> {
  factory $ChatMessageStateCopyWith(
          ChatMessageState value, $Res Function(ChatMessageState) then) =
      _$ChatMessageStateCopyWithImpl<$Res, ChatMessageState>;
  @useResult
  $Res call({String? chatId});
}

/// @nodoc
class _$ChatMessageStateCopyWithImpl<$Res, $Val extends ChatMessageState>
    implements $ChatMessageStateCopyWith<$Res> {
  _$ChatMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatMessageStateCopyWith<$Res>
    implements $ChatMessageStateCopyWith<$Res> {
  factory _$$_ChatMessageStateCopyWith(
          _$_ChatMessageState value, $Res Function(_$_ChatMessageState) then) =
      __$$_ChatMessageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chatId});
}

/// @nodoc
class __$$_ChatMessageStateCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$_ChatMessageState>
    implements _$$_ChatMessageStateCopyWith<$Res> {
  __$$_ChatMessageStateCopyWithImpl(
      _$_ChatMessageState _value, $Res Function(_$_ChatMessageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
  }) {
    return _then(_$_ChatMessageState(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatMessageState implements _ChatMessageState {
  const _$_ChatMessageState({this.chatId});

  @override
  final String? chatId;

  @override
  String toString() {
    return 'ChatMessageState(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessageState &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatMessageStateCopyWith<_$_ChatMessageState> get copyWith =>
      __$$_ChatMessageStateCopyWithImpl<_$_ChatMessageState>(this, _$identity);
}

abstract class _ChatMessageState implements ChatMessageState {
  const factory _ChatMessageState({final String? chatId}) = _$_ChatMessageState;

  @override
  String? get chatId;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessageStateCopyWith<_$_ChatMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
