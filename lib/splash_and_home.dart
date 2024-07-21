import 'package:flutter/material.dart';
import 'package:yess_app/bottomnavigation.dart';

class SplashScreenAndHome extends StatefulWidget {
  const SplashScreenAndHome({super.key});

  @override
  State<SplashScreenAndHome> createState() => _SplashScreenAndHomeState();
}

class _SplashScreenAndHomeState extends State<SplashScreenAndHome> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => BottomNavigation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/splash_top.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/splash_bottom.png'),
          ),
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
