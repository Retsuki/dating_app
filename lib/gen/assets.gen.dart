/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();
  $AssetsImagesOnboardingGen get onboarding =>
      const $AssetsImagesOnboardingGen();
  $AssetsImagesProfileGen get profile => const $AssetsImagesProfileGen();
  $AssetsImagesSetupGen get setup => const $AssetsImagesSetupGen();
  $AssetsImagesSignUpGen get signUp => const $AssetsImagesSignUpGen();
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/app.png
  AssetGenImage get app => const AssetGenImage('assets/images/logo/app.png');

  /// File path: assets/images/logo/apple.png
  AssetGenImage get apple =>
      const AssetGenImage('assets/images/logo/apple.png');

  /// File path: assets/images/logo/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/logo/facebook.png');

  /// File path: assets/images/logo/google.png
  AssetGenImage get google =>
      const AssetGenImage('assets/images/logo/google.png');
}

class $AssetsImagesOnboardingGen {
  const $AssetsImagesOnboardingGen();

  /// File path: assets/images/onboarding/image1.png
  AssetGenImage get image1 =>
      const AssetGenImage('assets/images/onboarding/image1.png');

  /// File path: assets/images/onboarding/image2.png
  AssetGenImage get image2 =>
      const AssetGenImage('assets/images/onboarding/image2.png');

  /// File path: assets/images/onboarding/image3.png
  AssetGenImage get image3 =>
      const AssetGenImage('assets/images/onboarding/image3.png');
}

class $AssetsImagesProfileGen {
  const $AssetsImagesProfileGen();

  /// File path: assets/images/profile/profile.png
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile/profile.png');
}

class $AssetsImagesSetupGen {
  const $AssetsImagesSetupGen();

  $AssetsImagesSetupSetupCompleteGen get setupComplete =>
      const $AssetsImagesSetupSetupCompleteGen();
  $AssetsImagesSetupSetupPhotoGen get setupPhoto =>
      const $AssetsImagesSetupSetupPhotoGen();
}

class $AssetsImagesSignUpGen {
  const $AssetsImagesSignUpGen();

  /// File path: assets/images/sign_up/sign_up.png
  AssetGenImage get signUp =>
      const AssetGenImage('assets/images/sign_up/sign_up.png');
}

class $AssetsImagesSetupSetupCompleteGen {
  const $AssetsImagesSetupSetupCompleteGen();

  /// File path: assets/images/setup/setup_complete/complete.png
  AssetGenImage get complete =>
      const AssetGenImage('assets/images/setup/setup_complete/complete.png');
}

class $AssetsImagesSetupSetupPhotoGen {
  const $AssetsImagesSetupSetupPhotoGen();

  /// File path: assets/images/setup/setup_photo/add_photo.png
  AssetGenImage get addPhoto =>
      const AssetGenImage('assets/images/setup/setup_photo/add_photo.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
