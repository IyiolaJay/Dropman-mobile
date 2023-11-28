import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/onboarding_data.dart';
import 'package:dropman/styles/buttons.dart';
import 'package:dropman/styles/colors.dart';
import '../../utils/onboarding/onboarding_contents.dart';
import '../../view/authentication/sign_up_screen.dart';

class WelcomeController extends StatefulWidget {
  const WelcomeController({super.key});

  @override
  State<WelcomeController> createState() => _WelcomeControllerState();
}

class _WelcomeControllerState extends State<WelcomeController> {
  final PageController _controller = PageController();
  late  ThemeData theme = Theme.of(context);
  int currentIndex = 0;
  
  void _navigatePages (int index, String? skipType){
    if (index == 2 || skipType == "Skip")  {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SignUpScreen(),));
    }
    else{
       _controller.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            SizedBox(
                height: 410,
                child: PageView.builder(
                  onPageChanged: (int index) => setState(() {
                    currentIndex = index;
                  }),
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
                    onPressed: () => _navigatePages(currentIndex, null),
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
                      onPressed:() => _navigatePages(currentIndex, "Skip"),
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
        );
  }
}