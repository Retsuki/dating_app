import 'package:freezed_annotation/freezed_annotation.dart';

part 'prefecture.freezed.dart';

@freezed
class Prefecture with _$Prefecture {
  const factory Prefecture({
    required String id,
    required String name,
    required String english,
  }) = _Prefecture;
}
