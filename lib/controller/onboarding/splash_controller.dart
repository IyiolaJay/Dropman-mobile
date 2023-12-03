import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/colors.dart';


class SplashScreenItem extends StatefulWidget {
  const SplashScreenItem({super.key});

  @override
  State<SplashScreenItem> createState() => _SplashScreenItemState();
}

class _SplashScreenItemState extends State<SplashScreenItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 10, end: 15).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();

    
       
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/dropman_letter.svg",
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return CircleAvatar(
              backgroundColor: kPrimaryColorWhite,
              radius: _animation.value,
            );
          },
        ),
      ],
    );
  }
}
