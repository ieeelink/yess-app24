import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Map',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF6761A3),
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: const Color(0xFF9A95CE),
              child: WebView(
                  initialUrl:
                      'https://www.google.com/maps/d/embed?mid=1hGeyKHzIDS-nkdBzPLjV5c2IIcbMYwY&ehbc=2E312F',
                  javascriptMode: JavascriptMode.unrestricted),
            ),
          ],
        ),
      ),
    );
  }
}
