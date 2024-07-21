import 'package:flutter/material.dart';
import 'package:yess_app/presentation/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            kHeight10,
            Text(
              'Profile',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Color(0xFF6761A3),
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Container(
              width: 100.0, // Width of the circle
              height: 100.0, // Height of the circle
              decoration: BoxDecoration(
                color:
                    Color.fromARGB(255, 152, 147, 214), // Color of the circle
                shape: BoxShape.circle,
              ),
            ),
            kHeight20,
            Text(
              'Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '+91 1234567890',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            Text(
              'yess@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            Text(
              'College of engineering',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            Text(
              'chengannur',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            Text(
              'student representative IEEE',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            kHeight20,
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color(0xFFEFEDFF),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
                borderRadius:
                    BorderRadius.circular(20), // Add rounded corners if desired
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ticket',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    kHeight10,
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Ticket ID',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]),
            ),
            kHeight20,
            Text(
              'Upcoming Events',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF6761A3),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                  ),
            ),
          ]),
        ));
  }
}
