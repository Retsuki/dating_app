import 'package:dating_app/features/chat/models/chat_message_state/chat_message_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatMessageStateNotifierProvider =
    StateNotifierProvider<ChatMessageStateNotifier, ChatMessageState>((ref) {
  return ChatMessageStateNotifier(ref.read);
});

class ChatMessageStateNotifier extends StateNotifier<ChatMessageState> {
  ChatMessageStateNotifier(this._read) : super(const ChatMessageState());

  final Reader _read;

  void updateChatId(String chatId) {
    state = state.copyWith(chatId: chatId);
  }
}
