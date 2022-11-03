import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/flavor.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final readonlyUserRepositoryProvider = Provider((ref) {
  return ReadonlyUserRepository(ref.read);
});

class ReadonlyUserRepository {
  const ReadonlyUserRepository(this._read);

  final Reader _read;

  // setup完了API追加
  Future<bool> completeSetup() async {
    final user = _read(authUserProvider).value!;
    final userId = user.uid;
    final token = await user.getIdToken();
    final url = Uri.parse('${flavor.getApiPrefix(ApiUrls.user)}/setup/$userId');

    logger.fine(url);

    final response = await http.put(
      url,
      headers: {'Authorization': 'Bearer $token'},
    );

    return response.statusCode >= 200 && response.statusCode < 300;
  }
}
