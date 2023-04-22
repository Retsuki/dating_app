// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'worry_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorryPostState {
  bool get isPossibleSend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorryPostStateCopyWith<WorryPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorryPostStateCopyWith<$Res> {
  factory $WorryPostStateCopyWith(
          WorryPostState value, $Res Function(WorryPostState) then) =
      _$WorryPostStateCopyWithImpl<$Res, WorryPostState>;
  @useResult
  $Res call({bool isPossibleSend});
}

/// @nodoc
class _$WorryPostStateCopyWithImpl<$Res, $Val extends WorryPostState>
    implements $WorryPostStateCopyWith<$Res> {
  _$WorryPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPossibleSend = null,
  }) {
    return _then(_value.copyWith(
      isPossibleSend: null == isPossibleSend
          ? _value.isPossibleSend
          : isPossibleSend // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorryPostStateCopyWith<$Res>
    implements $WorryPostStateCopyWith<$Res> {
  factory _$$_WorryPostStateCopyWith(
          _$_WorryPostState value, $Res Function(_$_WorryPostState) then) =
      __$$_WorryPostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPossibleSend});
}

/// @nodoc
class __$$_WorryPostStateCopyWithImpl<$Res>
    extends _$WorryPostStateCopyWithImpl<$Res, _$_WorryPostState>
    implements _$$_WorryPostStateCopyWith<$Res> {
  __$$_WorryPostStateCopyWithImpl(
      _$_WorryPostState _value, $Res Function(_$_WorryPostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPossibleSend = null,
  }) {
    return _then(_$_WorryPostState(
      isPossibleSend: null == isPossibleSend
          ? _value.isPossibleSend
          : isPossibleSend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WorryPostState implements _WorryPostState {
  const _$_WorryPostState({this.isPossibleSend = false});

  @override
  @JsonKey()
  final bool isPossibleSend;

  @override
  String toString() {
    return 'WorryPostState(isPossibleSend: $isPossibleSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorryPostState &&
            (identical(other.isPossibleSend, isPossibleSend) ||
                other.isPossibleSend == isPossibleSend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPossibleSend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorryPostStateCopyWith<_$_WorryPostState> get copyWith =>
      __$$_WorryPostStateCopyWithImpl<_$_WorryPostState>(this, _$identity);
}

abstract class _WorryPostState implements WorryPostState {
  const factory _WorryPostState({final bool isPossibleSend}) =
      _$_WorryPostState;

  @override
  bool get isPossibleSend;
  @override
  @JsonKey(ignore: true)
  _$$_WorryPostStateCopyWith<_$_WorryPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
