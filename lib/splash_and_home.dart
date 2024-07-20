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
      title: 'Splash Screen Animation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenAndHome(),
    );
  }
}

class SplashScreenAndHome extends StatefulWidget {
  const SplashScreenAndHome({super.key});

  @override
  State<SplashScreenAndHome> createState() => _SplashScreenAndHomeState();
}

class _SplashScreenAndHomeState extends State<SplashScreenAndHome> with TickerProviderStateMixin {
  bool _logoMovedUp = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _startAnimation();
  }

  _startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _logoMovedUp = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            top: _logoMovedUp ? 100.0 : MediaQuery.of(context).size.height / 2 - 100,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: Image.asset('assets/logo.png',
              width: 200,
              height: 200,
            ),
          ),
          FadeTransition(
            opacity: _animation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 250), // Adjust height to position text fields and button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Ticket ID',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle login action
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
