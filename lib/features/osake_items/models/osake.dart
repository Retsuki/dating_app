import 'package:dating_app/constants/constant_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'osake.freezed.dart';
part 'osake.g.dart';

@freezed
class Osake with _$Osake {
  const factory Osake({
    required String name,
    required int price,
    required String image,
  }) = _Osake;

  factory Osake.fromJson(JsonMap json) => _$OsakeFromJson(json);
}
