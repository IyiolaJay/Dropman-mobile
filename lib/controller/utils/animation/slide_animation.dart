import 'package:flutter/material.dart';

enum SlideDirection { fromTop, fromLeft, fromRight, fromBottom }

class SlideListAnimation extends StatefulWidget {
  final int position;
  final int itemCount;
  final Widget child;
  final SlideDirection slideDirection;
  final AnimationController animationController;

  const SlideListAnimation(
      {super.key,
      required this.position,
      required this.itemCount,
      required this.child,
      required this.slideDirection,
      required this.animationController});

  @override
  State<SlideListAnimation> createState() => _SlideListAnimationState();
}

class _SlideListAnimationState extends State<SlideListAnimation> {
  @override
  Widget build(BuildContext context) {
    var xTranslation = 0.0, yTranslation = 0.0;

    var animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval((1 / widget.itemCount) * widget.position, 1.0,
          curve: Curves.easeInOut),
    ));

    widget.animationController.forward();

    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (context, child) {

        if (widget.slideDirection == SlideDirection.fromTop) {
          yTranslation = -50 * (1.0 - animation.value);
        } else if (widget.slideDirection == SlideDirection.fromBottom) {
          yTranslation = 50 * (1.0 - animation.value);
        } else if (widget.slideDirection == SlideDirection.fromRight) {
          xTranslation = 400 * (1.0 - animation.value);
        } else {
          xTranslation = -400 * (1.0 - animation.value);
        }

        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform:
                Matrix4.translationValues(xTranslation, yTranslation, 0.0),
            child: widget.child,
          ),
        );
      },
    );
  }
}
