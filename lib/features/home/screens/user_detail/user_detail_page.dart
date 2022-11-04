import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/features/home/applications/user_detail/user_detail_provider.dart';
import 'package:dating_app/features/home/screens/user_detail/components/user_profile_images.dart';
import 'package:dating_app/features/home/screens/user_detail/components/user_profile_info.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserDetailPage extends HookConsumerWidget {
  const UserDetailPage({
    super.key,
    required this.userId,
  });

  static const routeName = 'user-detail';
  final String userId;

  List<String> getUserImageList(User user) {
    final imageList = [
      user.mainImage,
      user.subImage1,
      user.subImage2,
      user.subImage3
    ];
    return imageList.fold([], (previousValue, image) {
      if (image.isNullOrEmpty) {
        return previousValue;
      }

      previousValue.add(image!);
      return previousValue;
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userDetailProvider);
    if (user == null) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      appBar: AppBackButton(title: user.nickName),
      body: SafeArea(
        child: ListView(
          children: const [
            UserProfileImages(),
            Gap(40),
            UserProfileInfo(),
          ],
        ),
      ),
    );
  }
}
