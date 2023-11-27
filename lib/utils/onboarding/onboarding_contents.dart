import 'package:dropman/styles/typography.dart';
import 'package:flutter/material.dart';

class OnboardingContents extends StatelessWidget {
  final String imagePath;
  final String description;
  const OnboardingContents(
      {super.key, required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: 300,
        ),
        const SizedBox(
          height: 50,
        ),
        
        SizedBox(
          width: 335,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: smallBodyText.copyWith(color: theme.colorScheme.onSecondary),
          ),
        ),
      ],
    );
  }
}
