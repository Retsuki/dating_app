import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/components/app_bottom_natigation_bar.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/chat/applications/chat/chat_provider.dart';
import 'package:dating_app/features/chat/models/chat/chat.dart';
import 'package:dating_app/features/chat/screens/chat_message/chat_message_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/date_formatter/date_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  static const routeName = 'chat';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final userId = ref.watch(authUserProvider).value?.uid;
    final chatList = ref.watch(chatListProvider);
    if (userId == null || chatList == null) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      appBar: AppDefaultAppBar(
        title: l10n.message,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: chatList.length,
          itemBuilder: (context, index) {
            final chatDoc = chatList[index];
            return _Chat(
              userId: userId,
              chatId: chatDoc.id,
              chat: chatDoc.entity,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 16);
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}

class _Chat extends ConsumerWidget {
  const _Chat({
    required this.userId,
    required this.chatId,
    required this.chat,
  });

  final String userId;
  final String chatId;
  final Chat chat;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final partnerUserInfo = ref.read(chatProvider).getPartnerInfo(chat);
    final name = partnerUserInfo.name;

    return InkWell(
      onTap: () {
        context.goNamed(
          ChatMessagePage.routeName,
          params: {
            'chatId': chatId,
          },
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            width: 0.5,
            color: Colors.black45,
          ),
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            width: 60,
            height: 60,
            imageUrl: partnerUserInfo.mainImage,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        title: Text(
          name,
          style: textTheme.titleLarge,
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  chat.latestMessage,
                  style: textTheme.bodySmall!.copyWith(
                    color: Colors.black54,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Text(
              dateToTimeString(chat.createdAt!),
              style: textTheme.bodySmall!.copyWith(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
