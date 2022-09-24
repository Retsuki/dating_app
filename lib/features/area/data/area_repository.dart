import 'dart:convert';

import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/features/area/models/city.dart';
import 'package:dating_app/features/area/models/prefecture.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final areaProvider = Provider((ref) {
  return const AreaRepository._();
});

class AreaRepository {
  const AreaRepository._();

  Future<List<City>?> getCity(String id) async {
    final response = await http.get(
      Uri.parse('https://www.land.mlit.go.jp/webland/api/CitySearch?area=$id'),
    );

    if (response.statusCode == 200) {
      final cities = Cities.fromJson(
        json.decode(response.body) as JsonMap,
      );
      return cities.data;
    } else {
      logger.shout('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }
}

final prefectures = [
  const Prefecture(id: '01', name: '北海道', english: 'Hokkaido'),
  const Prefecture(id: '02', name: '青森県', english: 'Aomori Prefecture'),
  const Prefecture(id: '03', name: '岩手県', english: 'Iwate Prefecture'),
  const Prefecture(id: '04', name: '宮城県', english: 'Miyagi Prefecture'),
  const Prefecture(id: '05', name: '秋田県', english: 'Akita Prefecture'),
  const Prefecture(id: '06', name: '山形県', english: 'Yamagata Prefecture'),
  const Prefecture(id: '07', name: '福島県', english: 'Fukushima Prefecture'),
  const Prefecture(id: '08', name: '茨城県', english: 'Ibaraki Prefecture'),
  const Prefecture(id: '09', name: '栃木県', english: 'Tochigi Prefecture'),
  const Prefecture(id: '10', name: '群馬県', english: 'Gunma Prefecture'),
  const Prefecture(id: '11', name: '埼玉県', english: 'Saitama Prefecture'),
  const Prefecture(id: '12', name: '千葉県', english: 'Chiba Prefecture'),
  const Prefecture(id: '13', name: '東京都', english: 'Tokyo'),
  const Prefecture(id: '14', name: '神奈川県', english: 'Kanagawa Prefecture'),
  const Prefecture(id: '15', name: '新潟県', english: 'Niigata Prefecture'),
  const Prefecture(id: '16', name: '富山県', english: 'Toyama Prefecture'),
  const Prefecture(id: '17', name: '石川県', english: 'Ishikawa Prefecture'),
  const Prefecture(id: '18', name: '福井県', english: 'Fukui Prefecture'),
  const Prefecture(id: '19', name: '山梨県', english: 'Yamanashi Prefecture'),
  const Prefecture(id: '20', name: '長野県', english: 'Nagano Prefecture'),
  const Prefecture(id: '21', name: '岐阜県', english: 'Gifu Prefecture'),
  const Prefecture(id: '22', name: '静岡県', english: 'Shizuoka Prefecture'),
  const Prefecture(id: '23', name: '愛知県', english: 'Aichi Prefecture'),
  const Prefecture(id: '24', name: '三重県', english: 'Mie Prefecture'),
  const Prefecture(id: '25', name: '滋賀県', english: 'Shiga Prefecture'),
  const Prefecture(id: '26', name: '京都府', english: 'Kyoto Prefecture'),
  const Prefecture(id: '27', name: '大阪府', english: 'Osaka Prefecture'),
  const Prefecture(id: '28', name: '兵庫県', english: 'Hyogo Prefecture'),
  const Prefecture(id: '29', name: '奈良県', english: 'Nara Prefecture'),
  const Prefecture(id: '30', name: '和歌山県', english: 'Wakayama Prefecture'),
  const Prefecture(id: '31', name: '鳥取県', english: 'Tottori Prefecture'),
  const Prefecture(id: '32', name: '島根県', english: 'Shimane Prefecture'),
  const Prefecture(id: '33', name: '岡山県', english: 'Okayama Prefecture'),
  const Prefecture(id: '34', name: '広島県', english: 'Hiroshima Prefecture'),
  const Prefecture(id: '35', name: '山口県', english: 'Yamaguchi Prefecture'),
  const Prefecture(id: '36', name: '徳島県', english: 'Tokushima Prefecture'),
  const Prefecture(id: '37', name: '香川県', english: 'Kagawa Prefecture'),
  const Prefecture(id: '38', name: '愛媛県', english: 'Ehime Prefecture'),
  const Prefecture(id: '39', name: '高知県', english: 'Kochi Prefecture'),
  const Prefecture(id: '40', name: '福岡県', english: 'Fukuoka Prefecture'),
  const Prefecture(id: '41', name: '佐賀県', english: 'Saga Prefecture'),
  const Prefecture(id: '42', name: '長崎県', english: 'Nagasaki Prefecture'),
  const Prefecture(id: '43', name: '熊本県', english: 'Kumamoto Prefecture'),
  const Prefecture(id: '44', name: '大分県', english: 'Oita Prefecture'),
  const Prefecture(id: '45', name: '宮崎県', english: 'Miyazaki Prefecture'),
  const Prefecture(id: '46', name: '鹿児島県', english: 'Kagoshima Prefecture'),
  const Prefecture(id: '47', name: '沖縄県', english: 'Okinawa Prefecture'),
];
