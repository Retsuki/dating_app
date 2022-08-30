import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/user/screens/setup/setup_complete_page.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/provider/permission/permission_provider.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:dating_app/utils/picker_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class SetupPhotoPage extends StatelessWidget {
  const SetupPhotoPage({super.key});

  static const routeName = 'setup-photo';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.addPhotos),
      body: UnfocusOnTap(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              children: [
                Text(l10n.addPhotosMessage),
                const Gap(24),
                Row(
                  children: const [
                    _PhotoCard(),
                    SizedBox(width: 16),
                    _PhotoCard(),
                  ],
                ),
                const Gap(16),
                Row(
                  children: const [
                    _PhotoCard(),
                    SizedBox(width: 16),
                    _PhotoCard(),
                  ],
                ),
                const Spacer(
                  flex: 24,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.goNext,
          onPressed: () {
            context.goNamed(SetupCompletePage.routeName);
          },
        ),
      ),
    );
  }
}

class _PhotoCard extends ConsumerWidget {
  const _PhotoCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Flexible(
      fit: FlexFit.tight,
      // child: ClipRRect(
      //   borderRadius: BorderRadius.circular(12),
      //   child: Assets.images.onboarding.image1.image(
      //     scale: 4,
      //     fit: BoxFit.cover,
      //     height: 200,
      //   ),
      // ),
      child: DottedBorder(
        dashPattern: const [8, 4],
        color: colorScheme.primary,
        strokeCap: StrokeCap.round,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        child: InkWell(
          onTap: () async {
            // ピッカーのタイプ選択
            final imageSource = await pickImage(context: context);
            if (imageSource == null) {
              return;
            }

            // 権限がない場合は許可を求める
            await ref
                .read(permissionServiceProvider)
                .cameraOrPhotosPermissionRequest(
                  context: context,
                  source: imageSource,
                  permission: imageSource == ImageSource.camera
                      ? Permission.camera
                      : Permission.photos,
                );

            logger.fine(imageSource);
          },
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: colorScheme.primary.withOpacity(0.1),
            ),
            child: Center(
              child: Assets.images.setup.setupPhoto.addPhoto.image(scale: 4),
            ),
          ),
        ),
      ),
    );
  }
}
