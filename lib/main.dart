import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dropman/view/onboarding/splash_screen.dart';
import 'package:dropman/styles/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const Dropman());
}

class Dropman extends StatelessWidget {
  const Dropman({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dropman',
      theme: lightTheme,
      home: const SplashScreen(),
    );
  }
}
