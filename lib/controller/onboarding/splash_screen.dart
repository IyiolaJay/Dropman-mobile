import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreenItem extends StatefulWidget {
  const SplashScreenItem({super.key});

  @override
  State<SplashScreenItem> createState() => _SplashScreenItemState();
}

class _SplashScreenItemState extends State<SplashScreenItem> {
  
  // @override
  // void initState() {
  //   Future.delayed(
  //     const Duration(seconds: 3), () {
  //     //push to home page or onboarding..
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const RiveAnimation.asset("assets/rive/dro-splash.riv");
  }
}
