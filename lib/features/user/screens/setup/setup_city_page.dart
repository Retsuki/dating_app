import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/features/area/data/area_repository.dart';
import 'package:dating_app/features/area/models/city.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/setup/components/setup_select.dart';
import 'package:dating_app/features/user/screens/setup/setup_gender_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SetupCityPage extends HookConsumerWidget {
  const SetupCityPage({
    super.key,
  });

  static const routeName = 'setup-city';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);
    final cities = useState<List<City>?>([]);
    useEffect(
      () {
        final selectedPrefecture = prefectures.firstWhere(
          (prefecture) =>
              prefecture.name == setupNotifier.prefectureTextController.text,
        );
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          cities.value =
              await ref.read(areaProvider).getCity(selectedPrefecture.id);
        });
        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBackButton(title: setupNotifier.prefectureTextController.text),
      body: cities.value == null
          ? null
          : SetupSelect(
              itemCount: cities.value!.length,
              itemBuilder: (context, index) {
                final city = cities.value![index];
                final cityName = city.name;
                return SetupSelectInkWell(
                  onTap: () async {
                    setupNotifier.cityTextController.text = cityName;
                    await setupNotifier.saveToFirestore();
                    context.goNamed(SetupGenderPage.routeName);
                  },
                  text: cityName,
                );
              },
            ),
    );
  }
}
