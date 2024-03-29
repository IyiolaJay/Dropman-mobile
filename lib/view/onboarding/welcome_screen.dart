import 'package:dropman/styles/typography.dart';
import 'package:flutter/material.dart';

import '../../controller/onboarding/welcome_screen_controller.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: const SafeArea(
          child: Padding(
        padding:  EdgeInsets.fromLTRB(kDefaultPadding,
            kDefaultPadding + 56, kDefaultPadding, kDefaultPadding + 2),
        child: WelcomeController()
      )),
    );
  }
}
