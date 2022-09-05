import 'package:dating_app/features/chat/data/chat/chat_provider.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatListProvider = Provider((ref) {
  return ref
      .watch(chatStreamProvider)
      .value
      ?.docs
      .map(
        (doc) => Document(
          doc.id,
          doc.data(),
        ),
      )
      .toList();
});

final chatProvider = Provider(
  (ref) => ChatProvider(ref.read),
);

class ChatProvider {
  const ChatProvider(this._read);

  final Reader _read;

  /// 既読フラグを立てる
  Future<void> updateReadStatus() async {
    return;
  }
}
