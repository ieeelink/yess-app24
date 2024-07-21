import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

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
                'Events',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Color(0xFF6761A3),
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Epic Event Linup',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ));
  }
}
