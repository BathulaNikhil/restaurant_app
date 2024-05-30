import 'package:flutter/material.dart';
import 'package:restaurant_app/models/food.dart';

class FoodTitle extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTitle({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.name),
                  Text(
                    '\$' + food.price.toString(),
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    food.description,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              )),
              const SizedBox(width: 15), // SizedBox(width

              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  food.imagePath,
                  height: 120.0,
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
