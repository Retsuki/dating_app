import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_occupation.freezed.dart';
part 'master_occupation.g.dart';

@freezed
class MasterOccupation with _$MasterOccupation {
  const factory MasterOccupation({
    @DateTimeTimestampConverter() DateTime? createdAt,
    @DateTimeTimestampConverter() DateTime? updatedAt,
    @Default('') String name,
  }) = _MasterOccupation;

  factory MasterOccupation.fromJson(JsonMap json) =>
      _$MasterOccupationFromJson(json);
}
