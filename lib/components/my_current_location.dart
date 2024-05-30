import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'Deliver now',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ));
  }
}
