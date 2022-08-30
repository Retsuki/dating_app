import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/constant_datetime.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class StringTimestampConverter implements JsonConverter<String?, Object?> {
  const StringTimestampConverter();

  @override
  String? fromJson(Object? timestamp) {
    return timestamp == null
        ? null
        : dateFormatFull.format((timestamp as Timestamp).toDate());
  }

  @override
  Timestamp? toJson(String? datetimeString) {
    return datetimeString.isNullOrEmpty
        ? null
        : Timestamp.fromDate(dateFormatFull.parseStrict(datetimeString!));
  }
}
