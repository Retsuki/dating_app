/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();
  $AssetsImagesOnboardingGen get onboarding =>
      const $AssetsImagesOnboardingGen();
  $AssetsImagesOsakeGen get osake => const $AssetsImagesOsakeGen();
  $AssetsImagesPerformingWithManagementGen get performingWithManagement =>
      const $AssetsImagesPerformingWithManagementGen();
  $AssetsImagesProfileGen get profile => const $AssetsImagesProfileGen();
  $AssetsImagesSetupGen get setup => const $AssetsImagesSetupGen();
  $AssetsImagesSignUpGen get signUp => const $AssetsImagesSignUpGen();
  $AssetsImagesWarryGen get warry => const $AssetsImagesWarryGen();
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

  /// List of all assets
  List<AssetGenImage> get values => [app, apple, facebook, google];
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

  /// List of all assets
  List<AssetGenImage> get values => [image1, image2, image3];
}

class $AssetsImagesOsakeGen {
  const $AssetsImagesOsakeGen();

  /// File path: assets/images/osake/horoyoi.png
  AssetGenImage get horoyoi =>
      const AssetGenImage('assets/images/osake/horoyoi.png');

  /// File path: assets/images/osake/remondo.png
  AssetGenImage get remondo =>
      const AssetGenImage('assets/images/osake/remondo.png');

  /// List of all assets
  List<AssetGenImage> get values => [horoyoi, remondo];
}

class $AssetsImagesPerformingWithManagementGen {
  const $AssetsImagesPerformingWithManagementGen();

  /// File path: assets/images/performing_with_management/main.png
  AssetGenImage get main =>
      const AssetGenImage('assets/images/performing_with_management/main.png');

  /// List of all assets
  List<AssetGenImage> get values => [main];
}

class $AssetsImagesProfileGen {
  const $AssetsImagesProfileGen();

  /// File path: assets/images/profile/ojisan.png
  AssetGenImage get ojisan =>
      const AssetGenImage('assets/images/profile/ojisan.png');

  /// File path: assets/images/profile/profile.png
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile/profile.png');

  /// File path: assets/images/profile/uncle.png
  AssetGenImage get uncle =>
      const AssetGenImage('assets/images/profile/uncle.png');

  /// List of all assets
  List<AssetGenImage> get values => [ojisan, profile, uncle];
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

  /// List of all assets
  List<AssetGenImage> get values => [signUp];
}

class $AssetsImagesWarryGen {
  const $AssetsImagesWarryGen();

  /// File path: assets/images/warry/post.svg
  SvgGenImage get post => const SvgGenImage('assets/images/warry/post.svg');

  /// List of all assets
  List<SvgGenImage> get values => [post];
}

class $AssetsImagesSetupSetupCompleteGen {
  const $AssetsImagesSetupSetupCompleteGen();

  /// File path: assets/images/setup/setup_complete/complete.png
  AssetGenImage get complete =>
      const AssetGenImage('assets/images/setup/setup_complete/complete.png');

  /// List of all assets
  List<AssetGenImage> get values => [complete];
}

class $AssetsImagesSetupSetupPhotoGen {
  const $AssetsImagesSetupSetupPhotoGen();

  /// File path: assets/images/setup/setup_photo/add_photo.png
  AssetGenImage get addPhoto =>
      const AssetGenImage('assets/images/setup/setup_photo/add_photo.png');

  /// List of all assets
  List<AssetGenImage> get values => [addPhoto];
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
