import 'package:dating_app/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  static const routeName = 'book-button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            FilledButton(text: 'filledButton', onPressed: () {}),
            const Gap(10),
            FilledButton(
              text: 'filledRoundButton',
              onPressed: () {},
            ),
            const Gap(10),
            GhostButton(text: 'ghostButton', onPressed: () {}),
            const Gap(10),
            GhostButton(
              text: 'ghostRoundButton',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
