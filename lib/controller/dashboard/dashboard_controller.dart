import 'package:flutter/material.dart';

import '../utils/dashboard_stack_card.dart';

class DashboardController extends StatelessWidget {
  const DashboardController({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "👋",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "Hi, Iyiola",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(),
            CircleAvatar(
              radius: 15,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 220,
          child: DashboardCard(mediaWidth: mediaWidth),
        )
      ],
    );
  }
}
