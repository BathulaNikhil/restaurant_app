import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key}); 

  void openLocationSearchBox(BuildContext context) {
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Your Location'),
      content: TextField(
        decoration: const InputDecoration(
          hintText: 'Search address...',
        )
      ),
      actions: [
        //cancel button
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),

        //save button
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Save'),
        ),
      ],
    ));
  }

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
            Row(
              children: [
                Text('6901 Hollywood Blvd',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            )
          ],
        ));
  }
}
