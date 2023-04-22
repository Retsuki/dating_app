// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneAuth {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;
  String? get smsCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneAuthCopyWith<PhoneAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthCopyWith<$Res> {
  factory $PhoneAuthCopyWith(PhoneAuth value, $Res Function(PhoneAuth) then) =
      _$PhoneAuthCopyWithImpl<$Res, PhoneAuth>;
  @useResult
  $Res call({String? phoneNumber, String? verificationId, String? smsCode});
}

/// @nodoc
class _$PhoneAuthCopyWithImpl<$Res, $Val extends PhoneAuth>
    implements $PhoneAuthCopyWith<$Res> {
  _$PhoneAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationId = freezed,
    Object? smsCode = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: freezed == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneAuthCopyWith<$Res> implements $PhoneAuthCopyWith<$Res> {
  factory _$$_PhoneAuthCopyWith(
          _$_PhoneAuth value, $Res Function(_$_PhoneAuth) then) =
      __$$_PhoneAuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber, String? verificationId, String? smsCode});
}

/// @nodoc
class __$$_PhoneAuthCopyWithImpl<$Res>
    extends _$PhoneAuthCopyWithImpl<$Res, _$_PhoneAuth>
    implements _$$_PhoneAuthCopyWith<$Res> {
  __$$_PhoneAuthCopyWithImpl(
      _$_PhoneAuth _value, $Res Function(_$_PhoneAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationId = freezed,
    Object? smsCode = freezed,
  }) {
    return _then(_$_PhoneAuth(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: freezed == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PhoneAuth implements _PhoneAuth {
  _$_PhoneAuth({this.phoneNumber, this.verificationId, this.smsCode});

  @override
  final String? phoneNumber;
  @override
  final String? verificationId;
  @override
  final String? smsCode;

  @override
  String toString() {
    return 'PhoneAuth(phoneNumber: $phoneNumber, verificationId: $verificationId, smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneAuth &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, verificationId, smsCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneAuthCopyWith<_$_PhoneAuth> get copyWith =>
      __$$_PhoneAuthCopyWithImpl<_$_PhoneAuth>(this, _$identity);
}

abstract class _PhoneAuth implements PhoneAuth {
  factory _PhoneAuth(
      {final String? phoneNumber,
      final String? verificationId,
      final String? smsCode}) = _$_PhoneAuth;

  @override
  String? get phoneNumber;
  @override
  String? get verificationId;
  @override
  String? get smsCode;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneAuthCopyWith<_$_PhoneAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
