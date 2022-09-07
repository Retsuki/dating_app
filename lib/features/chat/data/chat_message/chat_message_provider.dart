import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/chat/data/chat/chat_provider.dart';
import 'package:dating_app/features/chat/models/chat/chat_message/chat_message.dart';
import 'package:dating_app/utils/extensions/extension_firestore_collection.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatMessageStreamProvider = StreamProvider.autoDispose
    .family<List<Document<ChatMessage>>, String>((ref, chatId) {
  return ref
      .watch(chatMessageRefProvider(chatId))
      .where('is_deleted', isEqualTo: false)
      .orderBy('created_at', descending: false)
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

final chatMessageRefProvider =
    Provider.family<CollectionReference<ChatMessage>, String>((ref, chatId) {
  return ref
      .watch(chatRefProvider)
      .doc(chatId)
      .collection(ColName.chatMessage)
      .withChatMessageConverter();
});
