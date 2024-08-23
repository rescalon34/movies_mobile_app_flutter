import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class ComingSoonView extends StatelessWidget {
  const ComingSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Coming Soon"),
          Gap(8),
          Text(
            "This feature is under construction, it will be available soon!",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
