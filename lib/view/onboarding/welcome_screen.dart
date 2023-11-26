import 'package:dropman/styles/buttons.dart';
import 'package:dropman/styles/typography.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding,
            kDefaultPadding + 56, kDefaultPadding, kDefaultPadding + 2),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Container(
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              child: Container(
                color: Colors.red,
              ),
            ),
            const Spacer(),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: primaryButtonStyle,
                    child: Text(
                      "Press me",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: secondaryButtonStyle,
                      child: const Text("Press me")),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
