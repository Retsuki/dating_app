---
to: lib/features/<%= h.changeCase.snake(featureName) %>/pages/<%= h.changeCase.snake(featureName) %>_page.dart
---
import 'package:flutter/material.dart';

class <%= h.changeCase.pascal(featureName) %>Page extends StatelessWidget {
  const <%= h.changeCase.pascal(featureName) %>Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('appBar'),
      ),
      body: const Text('body'),
    );
  }
}


