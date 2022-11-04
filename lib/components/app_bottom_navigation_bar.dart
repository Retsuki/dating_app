import 'package:dating_app/features/chat/screens/chat/chat_page.dart';
import 'package:dating_app/features/home/screens/home_page.dart';
import 'package:dating_app/features/performing_with_management/screens/performing_with_management_page.dart';
import 'package:dating_app/features/user/screens/profile/profile/profile_page.dart';
import 'package:dating_app/features/worry/screens/worry_office/worry_office_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final router = GoRouter.of(context);

    return Container(
      height: 80,
      margin: const EdgeInsets.only(
        left: 14,
        right: 14,
        bottom: 14,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
      decoration: BoxDecoration(
        color: colorScheme.background,
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(1, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _AppBottomNavigationBarItem(
            icon: Icons.home,
            isActive: router.location == '/${HomePage.routeName}',
            location: HomePage.routeName,
          ),
          _AppBottomNavigationBarItem(
            icon: Icons.local_shipping,
            isActive: router.location == '/${WorryOfficePage.routeName}',
            location: WorryOfficePage.routeName,
          ),
          _AppBottomNavigationBarItem(
            icon: Icons.accessibility_new,
            isActive:
                router.location == '/${PerformingWithManagement.routeName}',
            location: PerformingWithManagement.routeName,
          ),
          _AppBottomNavigationBarItem(
            icon: Icons.message,
            isActive: router.location == '/${ChatPage.routeName}',
            location: ChatPage.routeName,
          ),
          _AppBottomNavigationBarItem(
            icon: Icons.person,
            isActive: router.location == '/${ProfilePage.routeName}',
            location: ProfilePage.routeName,
          ),
        ],
      ),
    );
  }
}

class _AppBottomNavigationBarItem extends StatelessWidget {
  const _AppBottomNavigationBarItem({
    required this.icon,
    this.isActive = false,
    required this.location,
  });

  final IconData icon;
  final bool isActive;
  final String location;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: () => context.goNamed(location),
      child: Container(
        padding: const EdgeInsets.only(
          top: 12,
          left: 14,
          right: 14,
          bottom: 12,
        ),
        decoration: BoxDecoration(
          color: isActive
              ? colorScheme.primary
              : colorScheme.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: isActive ? colorScheme.onPrimary : colorScheme.primary,
        ),
      ),
    );
  }
}
