import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'bottom_navigation_items.dart';

/// This Main Page builds the "shell" for the app by building a Scaffold with a
/// NavigationBar, where the [child] is placed in the body of the Scaffold.
///
class MainScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScaffoldWithNavBar({
    super.key,
    required this.navigationShell,
  });

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar:
          Platform.isIOS ? _buildCupertinoTabBar() : _buildNavigationBar(),
    );
  }

  /// Android NavigationBar UI.
  NavigationBar _buildNavigationBar() {
    return NavigationBar(
      selectedIndex: navigationShell.currentIndex,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      onDestinationSelected: _goBranch,
      destinations: BottomNavigationItems.navigationItems
          .map(
            (entry) => NavigationDestination(
              icon: Icon(entry.material),
              label: entry.label,
            ),
          )
          .toList(),
    );
  }

  /// iOS Bottom TabBar UI.
  CupertinoTabBar _buildCupertinoTabBar() {
    return CupertinoTabBar(
      currentIndex: navigationShell.currentIndex,
      onTap: _goBranch,
      items: BottomNavigationItems.navigationItems
          .map(
            (entry) => BottomNavigationBarItem(
              icon: Icon(entry.cupertino),
            ),
          )
          .toList(),
    );
  }
}
