import 'package:flutter/material.dart';
import 'package:yess_app/presentation/core/constants.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          kHeight35,
          Text(
            'Events',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: const Color(0xFF6761A3),
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'Epic Event Linup',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 20),
          VenueEvents(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class VenueEvents extends StatelessWidget {
  const VenueEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'KE Auditorium',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: const Color(0xFF6761A3),
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => Container(
                padding: EdgeInsets.all(10),
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFEDFF),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text('Now happening'),
                      decoration: BoxDecoration(
                        color: Color(0xFFFEFFE2),
                        border: Border.all(
                          color: Color(0xFF41B4AE),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Catch The Flag',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
