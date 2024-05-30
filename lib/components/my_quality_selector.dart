import 'package:flutter/material.dart';
import '../models/food.dart';

class QualitySelector extends StatelessWidget {
  final int quality;
  final Food food;
  final VoidCallback onIncerement;
  final VoidCallback onDecrement;
  const QualitySelector(
      {super.key,
      required this.quality,
      required this.food,
      required this.onIncerement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: onDecrement,
              child: Icon(
                Icons.remove,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                width: 20,
                child: Center(
                  child: Text(quality.toString()),
                ),
              ),
            ),
            GestureDetector(
              onTap: onIncerement,
              child: Icon(
                Icons.add,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ));
  }
}
