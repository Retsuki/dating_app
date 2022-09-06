import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/chat/applications/chat/chat_provider.dart';
import 'package:dating_app/features/chat/applications/chat_message/chat_message_provider.dart';
import 'package:dating_app/features/chat/data/chat_message/chat_message_provider.dart';
import 'package:dating_app/features/chat/models/chat/chat_message/chat_message.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/date_formatter/date_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatMessagePage extends HookConsumerWidget {
  const ChatMessagePage({
    super.key,
    required this.chatId,
  });

  static const routeName = 'message';
  final String chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    const horizontal = 16.0;

    final userId = ref.watch(authUserProvider).value?.uid;
    final chatList = ref.watch(chatListProvider);
    if (userId == null || chatList == null) {
      return const SizedBox.shrink();
    }

    final chatDoc = chatList.firstWhere((chat) => chat.id == chatId);
    final partnerInfo = ref.read(chatProvider).getPartnerInfo(chatDoc.entity);

    useEffect(
      () {
        // ユーザーが開いたchatのIDをセットする
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref
              .read(chatMessageStateNotifierProvider.notifier)
              .updateChatId(chatId);
          return;
        });
        return null;
      },
      [],
    );

    final chatMessageList = ref.watch(chatMessageStreamProvider).value;

    return Scaffold(
      appBar: AppBackButton(title: partnerInfo.name),
      body: chatMessageList == null
          ? const SizedBox.shrink()
          : SafeArea(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: horizontal),
                itemCount: chatMessageList.length,
                itemBuilder: (context, index) {
                  final chatMessage = chatMessageList[index];
                  final isUserMessage = userId == chatMessage.entity.senderId;

                  return _Message(
                    isUserMessage: isUserMessage,
                    chatMessage: chatMessage.entity,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 24,
                ),
              ),
            ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(
          top: 5,
          left: horizontal,
          right: horizontal,
          bottom: 24,
        ),
        child: AppTextFormField(
          labelText: l10n.message,
        ),
      ),
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({
    required this.isUserMessage,
    required this.chatMessage,
  });

  final bool isUserMessage;
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Container(
      margin: EdgeInsets.only(
        left: isUserMessage ? 40 : 0,
        right: isUserMessage ? 0 : 40,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: isUserMessage ? colorScheme.primary : Colors.black12,
        borderRadius: BorderRadius.only(
          topLeft: isUserMessage ? const Radius.circular(16) : Radius.zero,
          topRight: isUserMessage ? Radius.zero : const Radius.circular(16),
          bottomLeft: const Radius.circular(16),
          bottomRight: const Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                chatMessage.message,
                style: TextStyle(
                  color: isUserMessage ? colorScheme.onPrimary : null,
                ),
              ),
            ),
          ),
          Text(
            dateToTimeString(chatMessage.createdAt!),
            style: textTheme.bodySmall!.copyWith(
              color: isUserMessage ? colorScheme.onPrimary : Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
