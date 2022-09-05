import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/chat/models/chat/chat_message/chat_message.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/date_formatter/date_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatMessagePage extends ConsumerWidget {
  const ChatMessagePage({
    super.key,
    required this.partnerName,
  });

  final String partnerName;
  static const routeName = 'message';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    const horizontal = 16.0;

    final chatMessageList = [
      ChatMessage(
        message: 'はじめまして',
        senderId: 'yqBR3qTtBKRGi15k3pHyhBWwVlW2',
        isDeleted: false,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      ChatMessage(
        message: 'はじめまして',
        senderId: 'hx73NgTwHWRYZ1gt2FBbkKLg6zR2',
        isDeleted: false,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      ChatMessage(
        message: 'れつきです',
        senderId: 'yqBR3qTtBKRGi15k3pHyhBWwVlW2',
        isDeleted: false,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      ChatMessage(
        message: 'ハリウッドです。趣味はなんですか？私はところてんを空中に投げてかめはめ波を撃つことです!!',
        senderId: 'hx73NgTwHWRYZ1gt2FBbkKLg6zR2',
        isDeleted: false,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    ];

    final userId = ref.watch(authUserProvider).value?.uid;
    if (userId == null) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      appBar: AppBackButton(title: partnerName),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: horizontal),
          itemCount: chatMessageList.length,
          itemBuilder: (context, index) {
            final chatMessage = chatMessageList[index];
            final isUserMessage = userId == chatMessage.senderId;

            return _Message(
              isUserMessage: isUserMessage,
              chatMessage: chatMessage,
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
