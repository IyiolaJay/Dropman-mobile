import 'package:dropman/styles/typography.dart';
import 'package:flutter/material.dart';

import '../utils/dashboard_stack_card.dart';

class DashboardController extends StatelessWidget {
  const DashboardController({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;

    List<Widget> generateQuickActivities() {
      return List.generate(3, (index) {
        return SizedBox(
          height: 120,
          width: 110,
          child: Placeholder(
              child: Center(
            child: CircleAvatar(
              child:
                  Text('$index', style: Theme.of(context).textTheme.bodySmall),
            ),
          )),
        );
      });
    }

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
          height: 200,
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
          children: generateQuickActivities(),
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
        ...List.generate(
          6,
          (index) => Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.secondary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  'assets/images/red-bike.png',
                  fit: BoxFit.scaleDown,
                  height: 60,
                  width: 60,
                ),
              ),
              ////

              title: Text(
                "Emmanuel Okafor",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 9,
                          ),
                    ),
                    Text('Delivery Date',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 9,
                            )),
                  ]),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.check_box,
                    color: Colors.green,
                  ),
                  Text(
                    "#2,345",
                  )
                ],
              ),
              contentPadding: const EdgeInsets.all(0),
            ),
          ),
        ),
      ],
    );
  }
}
