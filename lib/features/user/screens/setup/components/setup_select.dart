import 'package:flutter/material.dart';

class SetupSelect extends StatelessWidget {
  const SetupSelect({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 4,
        );
      },
    );
  }
}

class SetupSelectInkWell extends StatelessWidget {
  const SetupSelectInkWell({
    super.key,
    required this.onTap,
    required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 32,
        ),
        child: Text(
          text,
          style: textTheme.headlineMedium!.copyWith(
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
