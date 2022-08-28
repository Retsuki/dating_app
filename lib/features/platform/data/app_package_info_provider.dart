import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final appPackageInfoProvider = Provider<AppPackageInfo>((ref) {
  return throw UnimplementedError();
});

class AppPackageInfo {
  AppPackageInfo(this.appPackageInfo);
  final PackageInfo appPackageInfo;
}
