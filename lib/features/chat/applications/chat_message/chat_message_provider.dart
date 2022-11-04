import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/chat/data/chat_message/chat_message_provider.dart';
import 'package:dating_app/features/chat/models/chat/chat_message/chat_message.dart';
import 'package:dating_app/features/chat/models/chat_message_state/chat_message_state.dart';
import 'package:dating_app/utils/extensions/extension_firestore_document.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatMessageStateNotifierProvider =
    StateNotifierProvider<ChatMessageStateNotifier, ChatMessageState>((ref) {
  return ChatMessageStateNotifier(ref);
});

class ChatMessageStateNotifier extends StateNotifier<ChatMessageState> {
  ChatMessageStateNotifier(this._ref) : super(const ChatMessageState());

  final Ref _ref;

  final chatMessageScrollController = ScrollController();
  final messageTextController = TextEditingController();
  Future<void> sendMessage() async {
    final chatMessage = ChatMessage(
      message: messageTextController.text,
      senderId: _ref.read(authUserProvider).value!.uid,
    );
    await _ref
        .read(chatMessageRefProvider(state.chatId!))
        .doc()
        .raw
        .set(<String, dynamic>{
      ...chatMessage.toJson(),
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });

    messageTextController.clear();
    logger.fine('user sent message');
  }

  void updateChatId(String chatId) {
    state = state.copyWith(chatId: chatId);
  }

  @override
  void dispose() {
    chatMessageScrollController.dispose();
    messageTextController.dispose();
    super.dispose();
  }
}
