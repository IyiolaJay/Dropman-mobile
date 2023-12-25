import 'package:flutter/material.dart';
import 'package:dropman/styles/typography.dart';

import '../../models/dashboard/quick_actions.dart';
import '../utils/animation/slide_animation.dart';
import '../utils/dashboard/dashboard_stack_card.dart';
import '../utils/recent_deliveries.dart';

class DashboardController extends StatefulWidget {
  const DashboardController({super.key});

  @override
  State<DashboardController> createState() => _DashboardControllerState();
}

class _DashboardControllerState extends State<DashboardController> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
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
              style: Theme.of(context).textTheme.bodyMedium,
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
        const SizedBox(
          height: 20,
        ),

        //
        SizedBox(
          height: 200,
          child: DashboardCard(mediaWidth: mediaWidth),
        ),

        //
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: kDefaultPadding - 4),
          child: Text(
            'Quick Activities',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.left,
          ),
        ),

        //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(3, (index) {
              return SlideListAnimation(
                animationController: _controller,
                itemCount: 3,
                position: index,
                slideDirection: SlideDirection.fromRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 110,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(children: [
                    Image.asset(
                      q[index].imagePath,
                      fit: BoxFit.scaleDown,
                      height: 80,
                      width: 70,
                    ),
                    Text(
                      q[index].title,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ]),
                ),
              );
            })
          ],
        ),

        //
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
          (index) => SlideListAnimation(
            animationController: _controller,
            itemCount: 6,
            position: index,
            slideDirection: SlideDirection.fromRight,
            child: const RecentDeliveryItems()),
        ),
      ],
    );
  }
}
