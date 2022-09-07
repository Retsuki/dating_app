import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/chat/models/chat/chat.dart';
import 'package:dating_app/utils/extensions/extension_firestore_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatStreamProvider = StreamProvider<QuerySnapshot<Chat>?>((ref) {
  final userValue = ref.watch(authUserProvider);
  final uid = userValue.value?.uid;
  return userValue.isLoading
      ? const Stream.empty()
      : uid == null
          ? Stream.value(null)
          : ref
              .watch(chatRefProvider)
              .where('members', arrayContains: uid)
              .orderBy('updated_at', descending: true)
              .snapshots();
});

final chatRefProvider = Provider(
  (ref) =>
      FirebaseFirestore.instance.collection(ColName.chat).withChatConverter(),
);
