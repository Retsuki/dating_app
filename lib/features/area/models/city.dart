import 'package:dating_app/constants/constant_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class Cities with _$Cities {
  const factory Cities({
    required String status,
    required List<City> data,
  }) = _Cities;

  factory Cities.fromJson(JsonMap json) => _$CitiesFromJson(json);
}

@freezed
class City with _$City {
  const factory City({
    required String id,
    required String name,
  }) = _City;

  factory City.fromJson(JsonMap json) => _$CityFromJson(json);
}
