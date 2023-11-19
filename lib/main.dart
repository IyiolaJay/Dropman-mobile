import 'package:flutter/material.dart';
import 'package:dropman/styles/theme.dart';

void main() {
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
      home: Container(),
    );
  }
}
