import 'package:flutter/material.dart';
import 'package:yess_app/presentation/home/home.dart';

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
      MaterialPageRoute(builder: (context) => MainNavigationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/splash_top.png'),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 200,
              height: 200,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/splash_bottom.png'),
            ),
          ),
        ],
      ),
    );
  }
}
