import 'package:dating_app/components/app_bottom_natigation_bar.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = 'home';

  // userコレクションのデータを引っ張ってくる
  // ログイン順で
  // 表示させるものは、名前、年齢、メイン画像、休みの日
  // 2カラムで左から右に展開
  // 読み込む量は20人ずつで

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppDefaultAppBar(title: l10n.home),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
