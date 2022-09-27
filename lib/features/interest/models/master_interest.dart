import 'package:dating_app/utils/json_converters/date_time_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_interest.freezed.dart';
part 'master_interest.g.dart';

@freezed
class MasterInterest with _$MasterInterest {
  const factory MasterInterest({
    @DateTimeTimestampConverter() required DateTime createdAt,
    @DateTimeTimestampConverter() required DateTime updatedAt,
    required String name,
    required bool isShow,
  }) = _MasterInterest;

  factory MasterInterest.fromJson(Map<String, dynamic> json) =>
      _$MasterInterestFromJson(json);
}
