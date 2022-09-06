import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/chat/applications/chat_message/chat_message_provider.dart';
import 'package:dating_app/features/chat/data/chat/chat_provider.dart';
import 'package:dating_app/utils/extensions/extension_firestore_collection.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatMessageStreamProvider = StreamProvider.autoDispose((ref) {
  return ref
      .watch(chatMessageRefProvider)
      .where('is_deleted', isEqualTo: false)
      .orderBy('created_at', descending: true)
      .snapshots()
      .map(
        (snap) => snap.docs
            .map(
              (doc) => Document(
                doc.id,
                doc.data(),
              ),
            )
            .toList(),
      );
});

final chatMessageRefProvider = Provider((ref) {
  final chatId = ref.watch(chatMessageStateNotifierProvider).chatId;
  return ref
      .watch(chatRefProvider)
      .doc(chatId)
      .collection(ColName.chatMessage)
      .withChatMessageConverter();
});
