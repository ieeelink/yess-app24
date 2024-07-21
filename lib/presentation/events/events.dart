import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: ListView(
        children: [
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Events',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF6761A3),
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
          const SizedBox(height: 20),
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
                5, // Change this number to however many items you want
                (index) => Container(
                  padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFEDFF),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(
                        10), // Add rounded corners if desired
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
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
