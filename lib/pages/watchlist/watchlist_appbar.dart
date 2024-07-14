import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/components/GenericIcon.dart';

/// AppBar
class WatchlistAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WatchlistAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Watchlist",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GenericIcon(
                icon: Icons.cast,
                color: Colors.white,
                onTapIcon: () {
                  print("tapping on cast icon");
                },
              ),
              const SizedBox(
                width: 8,
              ),
              GenericIcon(
                icon: Icons.share,
                color: Colors.white,
                onTapIcon: () {
                  print("tapping on share icon");
                },
              ),
            ],
          ),
        )
      ],
      backgroundColor: Colors.indigoAccent,
    );
  }
}