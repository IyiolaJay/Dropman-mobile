import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dropman/view/dashboard/dashboard_screen.dart';
import 'package:dropman/view/settings/settings_screen.dart';

import '../request/request_screen.dart';
import '../tracking/tracking_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  var _currentIndex = 0;

  final List<BottomNavigationBarItem> navBarList = const [
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
  ];

  final List<Widget> navPages = [
    const DashboardScreen(),
    const TrackingScreen(),
    const RequestScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[...navBarList]),
          ),
        ),
      ),
    );
  }
}
