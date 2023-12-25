import 'dart:ui';
import 'package:dropman/view/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: const DashboardScreen(),
      bottomNavigationBar: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
          child: SizedBox(
            height: 80,
            child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.track_changes_rounded,
              ),
              label: "Track",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.send,
              ),
              label: "Request",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings",
            ),
              ]),
          ),
        ),
      ),
    );
  }
}
