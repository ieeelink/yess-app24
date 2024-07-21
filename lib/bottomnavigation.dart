import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineMedium: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w400, // Regular weight
              ),
            ),
      ),
      home: const MainNavigationPage(),
    );
  }
}

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int currentPageIndex = 0;

  // Adjusted the order of pages here
  final List<Widget> pages = [
    const MapPage(), // Map Page as the first page
    const EventsPage(), // Events Page as the second page
    const ProfilePage(), // Profile Page as the third page
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

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 50),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Map',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 50),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: const Color(0xFF9A95CE),
          ),
        ],
      ),
    );
  }
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Center(
        child: Text(
          'Events Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Center(
        child: Text(
          'Profile Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
