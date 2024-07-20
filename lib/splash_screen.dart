import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Animation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _logoMovedUp = false;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  _startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _logoMovedUp = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            top: _logoMovedUp ? 100.0 : MediaQuery.of(context).size.height / 2 - 50,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: const Center(
              child: ,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
