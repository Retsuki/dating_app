import 'package:dating_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Assets.images.profile.profile.image(scale: 4),
          Positioned(
            right: -5,
            bottom: -5,
            child: CircleAvatar(
              backgroundColor: colorScheme.primary,
              child: Icon(
                Icons.camera_alt_rounded,
                size: 24,
                color: colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
