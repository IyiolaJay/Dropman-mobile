import 'package:dropman/styles/typography.dart';
import 'package:flutter/material.dart';

import '../utils/dashboard_stack_card.dart';

class DashboardController extends StatelessWidget {
  const DashboardController({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: kDefaultPadding - 4),
          child: Text(
            'Quick Activities',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              height: 120,
              width: 110,
              child: Placeholder(),
            ),
            SizedBox(
              height: 120,
              width: 110,
              child: Placeholder(),
            ),
            SizedBox(
              height: 120,
              width: 110,
              child: Placeholder(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: kDefaultPadding + 4),
          child: Text(
            'Recent Deliveries',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.left,
          ),
        ),

        //
         ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.black,
            ),
         
            title: Text("Okafor Emmanuel",
         
            style: Theme.of(context).textTheme.bodyMedium,
            
            ),
            trailing: const Icon(Icons.check_box),
            contentPadding: const EdgeInsets.all(0),
         
                 ),
         
      ],
    );
  }
}
