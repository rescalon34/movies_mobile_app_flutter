import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HorizontalListItem extends StatelessWidget {
  final String text;
  final bool? showArrowIcon;
  final Function() onItemClick;

  const HorizontalListItem({
    super.key,
    required this.text,
    this.showArrowIcon = true,
    required this.onItemClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemClick,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 0, top: 8),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(flex: 1),
                  Visibility(
                    visible: showArrowIcon == true,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 13,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  )
                ],
              ),
              const Gap(8),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
