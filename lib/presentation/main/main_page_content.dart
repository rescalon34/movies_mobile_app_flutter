import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation/bottom_navigation_items.dart';

/// Main entry page with bottom navigation.
/// Its content will be replaced by the selectedPageIndex variable.
class MainPageContent extends StatefulWidget {
  const MainPageContent({super.key});

  @override
  State<MainPageContent> createState() => _MainPageContentState();
}

class _MainPageContentState extends State<MainPageContent> {
  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationItems.screens[selectedPageIndex],
      bottomNavigationBar:
          Platform.isIOS ? _buildCupertinoTabBar() : _buildNavigationBar(),
    );
  }

  NavigationBar _buildNavigationBar() {
    return NavigationBar(
      selectedIndex: selectedPageIndex,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      onDestinationSelected: (index) {
        setState(() => selectedPageIndex = index);
      },
      destinations: BottomNavigationItems.navigationItems
          .map((entry) => NavigationDestination(
                icon: Icon(entry.material),
                label: entry.label,
              ))
          .toList(),
    );
  }

  CupertinoTabBar _buildCupertinoTabBar() {
    return CupertinoTabBar(
      currentIndex: selectedPageIndex,
      onTap: (index) {
        setState(() => selectedPageIndex = index);
      },
      items: BottomNavigationItems.navigationItems
          .map((entry) => BottomNavigationBarItem(
                icon: Icon(entry.cupertino),
                // label: entry.label,
              ))
          .toList(),
    );
  }
}
