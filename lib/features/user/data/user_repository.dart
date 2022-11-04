import 'dart:convert';

import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/flavor.dart';
import 'package:dating_app/utils/app/error/app_api_error.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final userRepositoryProvider = Provider(UserRepository._);

class UserRepository {
  UserRepository._(this._ref);

  final Ref _ref;

  Future<void> deleteUser() async {
    final authUser = _ref.read(authUserProvider).value!;
    final token = await authUser.getIdToken(true);
    final url =
        Uri.parse('${flavor.getApiPrefix(ApiUrls.user)}/${authUser.uid}');

    final res = await http.delete(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (res.statusCode != 200) {
      throw AppApiException.fromJson(json.decode(res.body) as JsonMap);
    }
  }
}
