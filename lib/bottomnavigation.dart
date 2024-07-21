import 'package:flutter/material.dart';
import 'package:yess_app/events.dart';
import 'package:yess_app/map.dart';
import 'package:yess_app/profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  final List<Widget> pages = [
    const MapPage(),
    const EventsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.map), // Updated to reflect the Map Page
            label: 'Map',
          ),
          NavigationDestination(
            icon: Icon(Icons.event), // Updated to reflect the Events Page
            label: 'Events',
          ),
          NavigationDestination(
            icon: Icon(Icons.person), // Updated to reflect the Profile Page
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
