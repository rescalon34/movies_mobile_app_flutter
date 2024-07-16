import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/download/download_page.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/profile/profile_page.dart';

import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/watchlist/watchlist_page.dart';

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
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        destinations: BottomNavigationItems.destinations,
      ),
    );
  }
}

/// Contains bottom navigation destinations and screens.
/// The length of screens and destinations must be the same.
class BottomNavigationItems {
  static const List<Widget> screens = [
    HomePage(),
    SearchPage(),
    WatchlistPage(),
    DownloadPage(),
    ProfilePage()
  ];

  static const List<NavigationDestination> destinations = [
    NavigationDestination(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    NavigationDestination(
      icon: Icon(Icons.search),
      label: "Search",
    ),
    NavigationDestination(
      icon: Icon(Icons.add_circle_outline_rounded),
      label: "Watchlist",
    ),
    NavigationDestination(
      icon: Icon(Icons.download_sharp),
      label: "Download",
    ),
    NavigationDestination(
      icon: Icon(Icons.account_circle_rounded),
      label: "Profile",
    ),
  ];
}
