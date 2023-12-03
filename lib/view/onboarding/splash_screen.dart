import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../controller/onboarding/splash_controller.dart';
import '../../styles/colors.dart';
import 'package:dropman/view/onboarding/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  PageRouteBuilder pushHomePage (context) {
      return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const WelcomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              final offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },

            transitionDuration: const Duration(seconds: 1),
          );
    }

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context, pushHomePage(context)
          
        );
      },
    );

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
