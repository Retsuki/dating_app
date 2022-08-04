import 'package:dating_app/components/app_back_button.dart';
import 'package:flutter/material.dart';

class BookBackButton extends StatelessWidget {
  const BookBackButton({super.key});

  static const routeName = 'book-back-button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
      ),
    );
  }
}
