import 'package:flutter/material.dart';

/// A reusable AppBar widget that allows flexibility to add needed params by centralizing
/// common AppBar configurations such as title, leadingIcon, actionButtons, etc.
///
/// Example:
/// ```dart page
/// CustomAppBar(
///   title: 'Home',
///   shouldCenterTitle: true,
///   leadingIcon: IconButton(
///     icon: Icon(Icons.menu),
///     onPressed: () {},
///   ),
///   actions: [
///     IconButton(
///       icon: Icon(Icons.search),
///       onPressed: () {},
///     ),
///   ],
/// )
/// ```
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? centerTitle;
  final Color? backgroundColor;
  final Widget? leadingIcon;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    this.title = "",
    this.centerTitle = false,
    this.backgroundColor,
    this.leadingIcon,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      centerTitle: centerTitle,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.surfaceContainer,
      leading: leadingIcon,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
