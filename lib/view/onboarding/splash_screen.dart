import 'package:flutter/material.dart';

import '../../controller/onboarding/splash_screen.dart';
import '../../styles/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      backgroundColor: kSecondaryColorBlack,
      body: Center(child: SplashScreenItem()),

    );
  }
}
