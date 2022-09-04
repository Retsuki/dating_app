import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  static const routeName = 'chat';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    const chatList = [
      _Chat(
        imageUrl:
            'https://d35omnrtvqomev.cloudfront.net/photo/article/article_part/image_path_1/412095/f3ab7a9df9ffe2d00a4174bb0d6922.jpg',
        name: '白石麻衣',
        latestMessage: 'おはようございます',
        createdAt: '09:00',
      ),
      _Chat(
        imageUrl:
            'https://d35omnrtvqomev.cloudfront.net/photo/article/article_part/image_path_1/412095/f3ab7a9df9ffe2d00a4174bb0d6922.jpg',
        name: '白石麻衣',
        latestMessage: 'おはようございます',
        createdAt: '09:00',
      ),
      _Chat(
        imageUrl:
            'https://d35omnrtvqomev.cloudfront.net/photo/article/article_part/image_path_1/412095/f3ab7a9df9ffe2d00a4174bb0d6922.jpg',
        name: '白石麻衣',
        latestMessage: 'おはようございます。今日は雨ですね。',
        createdAt: '09:00',
      ),
    ];

    return Scaffold(
      appBar: AppDefaultAppBar(
        title: l10n.message,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: chatList.length,
          itemBuilder: (context, index) => chatList[index],
          separatorBuilder: (context, index) {
            return const SizedBox(height: 16);
          },
        ),
      ),
    );
  }
}

class _Chat extends StatelessWidget {
  const _Chat({
    required this.imageUrl,
    required this.name,
    required this.latestMessage,
    required this.createdAt,
  });

  final String imageUrl;
  final String name;
  final String latestMessage;
  final String createdAt;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {},
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
            imageUrl: imageUrl,
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
                  latestMessage,
                  style: textTheme.bodySmall!.copyWith(
                    color: Colors.black54,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Text(
              createdAt,
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
