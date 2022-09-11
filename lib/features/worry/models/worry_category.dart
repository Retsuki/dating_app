import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'worry_category.freezed.dart';
part 'worry_category.g.dart';

enum WorryCategoryType {
  koi,
  life,
  other,
}

@freezed
class WorryCategory with _$WorryCategory {
  const factory WorryCategory({
    @DateTimeTimestampConverter() required DateTime createdAt,
    @DateTimeTimestampConverter() required DateTime updatedAt,
    @Default(WorryCategoryType.other) WorryCategoryType type,
    required String name,
  }) = _WorryCategory;

  factory WorryCategory.fromJson(JsonMap json) => _$WorryCategoryFromJson(json);
}
