import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Center(
        child: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Color(0xFF6761A3),
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
