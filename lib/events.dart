import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Center(
        child: Text(
          'Events',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400, // Regular weight
              ),
        ),
      ),
    );
  }
}
