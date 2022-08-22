import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeTimestampConverter implements JsonConverter<DateTime, Object> {
  const DateTimeTimestampConverter();

  @override
  DateTime fromJson(Object timestamp) {
    return (timestamp as Timestamp).toDate();
  }

  @override
  Object toJson(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }
}
