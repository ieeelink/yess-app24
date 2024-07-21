import 'package:flutter/material.dart';
import 'package:yess_app/navigation.dart';
import 'map.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  bool _logoMovedUp = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _startAnimation();
  }

  _startAnimation() async {
    setState(() {
      _logoMovedUp = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
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
            top: _logoMovedUp
                ? 100.0
                : MediaQuery.of(context).size.height / 2 - 100,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: Image.asset(
              'assets/logo.png',
              width: 200,
              height: 200,
            ),
          ),
          if (_logoMovedUp)
            FadeTransition(
              opacity: _animation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      height:
                          250), // Adjust height to position text fields and button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Ticket ID',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainNavigationPage(),
                                ));
                          },
                          child: const Text(
                            'LOGIN',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Karma',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF2B2849)), // Change button color
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(300, 50)), // Change button size
                          ),
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
