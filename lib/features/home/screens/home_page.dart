import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/components/app_bottom_natigation_bar.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/home/screens/user_detail/user_detail_page.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/date_formatter/date_to_string.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    const userList = [
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/08/17',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
      User(
        nickName: 'マイ',
        birthday: '1998/11/18',
        mainImage:
            'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
      ),
    ];
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppDefaultAppBar(title: l10n.home),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: 180 / 244,
          ),
          itemCount: userList.length,
          itemBuilder: (context, index) {
            final user = userList[index];
            return Material(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(40),
              child: Ink.image(
                fit: BoxFit.cover,
                height: 244,
                image: CachedNetworkImageProvider(
                  user.mainImage!,
                ),
                child: InkWell(
                  onTap: () {
                    context.goNamed(
                      UserDetailPage.routeName,
                      params: {'userId': 'test'},
                    );
                  },
                  child: _NameAndAge(user: user),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
      extendBody: true,
    );
  }
}

class _NameAndAge extends StatelessWidget {
  const _NameAndAge({
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.transparent,
                  colorScheme.primary.withOpacity(0),
                  colorScheme.primary.withOpacity(0.2),
                  colorScheme.primary.withOpacity(0.4),
                  colorScheme.primary.withOpacity(0.6),
                  colorScheme.primary.withOpacity(0.8),
                  colorScheme.primary.withOpacity(1),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 32,
          child: Row(
            children: [
              Text(
                l10n.nickNameAndAge(
                  user.nickName,
                  birthdayStrToAge(user.birthday!),
                ),
                style: textTheme.headlineSmall!.copyWith(
                  color: colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
