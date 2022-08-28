// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$PhoneAuthCopyWithImpl<$Res>;
  $Res call({String? phoneNumber, String? verificationId, String? smsCode});
}

/// @nodoc
class _$PhoneAuthCopyWithImpl<$Res> implements $PhoneAuthCopyWith<$Res> {
  _$PhoneAuthCopyWithImpl(this._value, this._then);

  final PhoneAuth _value;
  // ignore: unused_field
  final $Res Function(PhoneAuth) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationId = freezed,
    Object? smsCode = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhoneAuthCopyWith<$Res> implements $PhoneAuthCopyWith<$Res> {
  factory _$$_PhoneAuthCopyWith(
          _$_PhoneAuth value, $Res Function(_$_PhoneAuth) then) =
      __$$_PhoneAuthCopyWithImpl<$Res>;
  @override
  $Res call({String? phoneNumber, String? verificationId, String? smsCode});
}

/// @nodoc
class __$$_PhoneAuthCopyWithImpl<$Res> extends _$PhoneAuthCopyWithImpl<$Res>
    implements _$$_PhoneAuthCopyWith<$Res> {
  __$$_PhoneAuthCopyWithImpl(
      _$_PhoneAuth _value, $Res Function(_$_PhoneAuth) _then)
      : super(_value, (v) => _then(v as _$_PhoneAuth));

  @override
  _$_PhoneAuth get _value => super._value as _$_PhoneAuth;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationId = freezed,
    Object? smsCode = freezed,
  }) {
    return _then(_$_PhoneAuth(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: smsCode == freezed
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
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(smsCode));

  @JsonKey(ignore: true)
  @override
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
