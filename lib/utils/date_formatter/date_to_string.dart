import 'package:dating_app/constants/constant_datetime.dart';

/// DateTimeを時刻に変換する
String dateToTimeString(DateTime dateTime) {
  return dateFormatTime.format(dateTime);
}
