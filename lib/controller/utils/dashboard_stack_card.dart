import "package:flutter/material.dart";
import "package:dropman/styles/colors.dart";

import "../../styles/typography.dart";
import "dashboard_stack_card_items.dart";

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.mediaWidth,
  });

  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 10,
          child: Card(
            child: Container(
              height: 180,
              width: mediaWidth - kDefaultPadding * 4,
              decoration: BoxDecoration(
                color: kTertiaryColor,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: Card(
            child: Container(
                height: 180,
                width: mediaWidth - kDefaultPadding * 2,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 19, horizontal: 12),
                  child: DashboardCardItems(),
                )),
          ),
        ),
      ],
    );
  }
}

