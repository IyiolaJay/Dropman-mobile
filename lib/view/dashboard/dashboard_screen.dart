import 'package:flutter/material.dart';

import '../../controller/dashboard/dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: DashboardController(),
              ),
          ),
        ));
  }
}