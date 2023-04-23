import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkya/utils/type/app_type.dart';

part 'like.freezed.dart';
part 'like.g.dart';

@freezed
class Like with _$Like {
  const factory Like({
    required String name,
  }) = _Like;

  factory Like.fromJson(JsonMap json) => _$LikeFromJson(json);
}



