import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/constant_datetime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class StringTimestampConverter implements JsonConverter<String, Object> {
  const StringTimestampConverter();

  @override
  String fromJson(Object timestamp) {
    return dateFormatFull.format((timestamp as Timestamp).toDate());
  }

  @override
  Timestamp toJson(String datetimeString) {
    return Timestamp.fromDate(dateFormatFull.parseStrict(datetimeString));
  }
}
