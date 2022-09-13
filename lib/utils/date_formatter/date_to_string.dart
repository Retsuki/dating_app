import 'package:dating_app/constants/constant_datetime.dart';

/// DateTimeを時刻に変換する
String dateToTimeString(DateTime dateTime) {
  return dateFormatTime.format(dateTime);
}

/// 生年月日(string)を年齢(int)に変換する
int birthdayStrToAge(String birthday) {
  int calc(DateTime dateTime) {
    return dateTime.year * 10000 + dateTime.month * 100 + dateTime.day;
  }

  final birthdayDate = dateFormatFull.parse(birthday);
  final now = DateTime.now();
  final age = (calc(now) - calc(birthdayDate)) / 10000;

  return age.floor();
}
