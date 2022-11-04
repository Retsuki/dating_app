import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/chat/data/chat/chat_provider.dart';
import 'package:dating_app/features/chat/models/chat/chat.dart';
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
  ChatProvider.new,
);

class ChatProvider {
  const ChatProvider(this._ref);

  final Ref _ref;

  /// チャット相手の情報取得
  MembersInfo getPartnerInfo(Chat chat) {
    final uid = _ref.read(authUserProvider).value!.uid;
    final partnerId = chat.members.firstWhere((memberId) => memberId != uid);
    return chat.membersInfo[partnerId]!;
  }

  /// 既読フラグを立てる
  Future<void> updateReadStatus() async {
    return;
  }
}
