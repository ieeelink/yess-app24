import 'package:flutter/material.dart';
import 'package:yess_app/presentation/core/constants.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            kHeight40,
            Text(
              'Mapd',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Color(0xFF6761A3),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            kHeight40,
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: const Color(0xFF9A95CE),
            )
          ],
        ),
      ),
    );
  }
}
