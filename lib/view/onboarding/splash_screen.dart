import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dropman/view/tab/tab_screen.dart';
import 'package:dropman/view/onboarding/welcome_screen.dart';
import '../../controller/onboarding/splash_controller.dart';
import '../../styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = false;
  bool _isMounted = false;

  _getPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    if (_isMounted) {
      final showHome = prefs.getBool('isLogin') ?? false;
      setState(() {
        print(showHome);
        isLogin = showHome;
      });
    }
  }
   @override
  void initState() {
    super.initState();
    _isMounted = true;
    _getPreferences();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (_isMounted) {
          Navigator.pushReplacement(
            context,
            pushHomePage(context),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _isMounted = false;
    super.dispose();
  }

  PageRouteBuilder pushHomePage (context) {
      return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
               isLogin ? const TabScreen() : const WelcomeScreen(),
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
    

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark, // StatusBar background color
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: kSecondaryColorBlack, // NavigationBar background color
    ));
    
    return const Scaffold(
      
      backgroundColor: kSecondaryColorBlack,
      body: Center(child:  SplashScreenItem()),

    );
  }
}
