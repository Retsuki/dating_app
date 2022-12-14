import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_state.freezed.dart';

@freezed
class ChatMessageState with _$ChatMessageState {
  const factory ChatMessageState({
    String? chatId,
  }) = _ChatMessageState;
}
