import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../controller/onboarding/splash_screen.dart';
import '../../styles/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark, // StatusBar background color
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: kSecondaryColorBlack, // NavigationBar background color
    ));
    
    return const Scaffold(
      
      backgroundColor: kSecondaryColorBlack,
      body: Center(child: SplashScreenItem()),

    );
  }
}
