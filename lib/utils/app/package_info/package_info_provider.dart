import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final packageInfoProvider = Provider<PackageInfo>((ref) {
  return throw UnimplementedError();
});

class AppPackageInfo {
  AppPackageInfo(this.packageInfo);
  final PackageInfo packageInfo;
}
