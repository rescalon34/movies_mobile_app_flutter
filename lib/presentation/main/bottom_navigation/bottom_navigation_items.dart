import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/download/download_page.dart';
import '../../pages/home/home_page.dart';
import '../../pages/profile/profile_page.dart';
import '../../pages/search/search_page.dart';
import '../../pages/watchlist/watchlist_page.dart';

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

  static const List<NavigationItem> navigationItems = [
    NavigationItem(
      material: Icons.home,
      cupertino: CupertinoIcons.house_fill,
      label: "Home",
    ),
    NavigationItem(
      material: Icons.search,
      cupertino: CupertinoIcons.search,
      label: "Search",
    ),
    NavigationItem(
      material: Icons.add_circle_outline_rounded,
      cupertino: CupertinoIcons.plus_circle,
      label: "Watchlist",
    ),
    NavigationItem(
      material: Icons.download_sharp,
      cupertino: CupertinoIcons.arrow_down_to_line,
      label: "Download",
    ),
    NavigationItem(
      material: Icons.account_circle_rounded,
      cupertino: CupertinoIcons.profile_circled,
      label: "Profile",
    ),
  ];
}

/// Navigation Item data, material and cupertino will be shown on the specific
/// platform device.
class NavigationItem {
  final IconData material;
  final IconData cupertino;
  final String label;

  const NavigationItem({
    required this.material,
    required this.cupertino,
    required this.label,
  });
}
