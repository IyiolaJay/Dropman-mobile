import 'package:dropman/styles/buttons.dart';
import 'package:dropman/styles/colors.dart';
import 'package:dropman/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/onboarding_data.dart';
import '../../utils/onboarding/onboarding_contents.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();
  late  ThemeData theme = Theme.of(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding,
            kDefaultPadding + 56, kDefaultPadding, kDefaultPadding + 2),
        child: Column(
          children: [
            SizedBox(
                height: 410,
                child: PageView.builder(
                  itemCount: onboardingPagesData.length,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    return OnboardingContents(
                      description: onboardingPagesData[index].description,
                      imagePath: onboardingPagesData[index].imagePath,
                    );
                  },
                )),
           
           
            const Spacer(),

            SmoothPageIndicator(
              controller: _controller,
              count: onboardingPagesData.length,
              effect: const ExpandingDotsEffect(
                dotColor: Color(0xFF7F7F7F),
                dotHeight: 5.5,
                dotWidth: 8,
                activeDotColor: kSecondaryColorBlack),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: primaryButtonStyle,
                    child: Text(
                      "Continue",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: secondaryButtonStyle,
                      child:  Text("Skip",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.secondary
                      ),
                      )),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
