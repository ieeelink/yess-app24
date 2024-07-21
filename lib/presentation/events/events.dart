import 'package:flutter/material.dart';
import 'package:yess_app/presentation/core/constants.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight40,
                Text(
                  'Events',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Color(0xFF6761A3),
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Epic Event Linup',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                      ),
                ),
                kHeight30,
              ],
            )),
      ),
    );
  }
}
