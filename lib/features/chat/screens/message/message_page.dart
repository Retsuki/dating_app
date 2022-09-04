import 'package:dating_app/components/app_back_button.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({
    super.key,
    required this.partnerName,
  });

  final String partnerName;
  static const routeName = 'message';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBackButton(title: partnerName),
    );
  }
}
