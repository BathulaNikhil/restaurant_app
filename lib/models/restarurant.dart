import 'package:flutter/material.dart';

import '../models/food.dart';

class Restraurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: 'Pasta',
      description: 'Pasta with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 10.99,
      category: FoodCategory.dinner,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Pizza',
      description: 'Pizza with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 15.99,
      category: FoodCategory.dinner,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Burger',
      description: 'Burger with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 5.99,
      category: FoodCategory.lunch,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Salad',
      description: 'Salad with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 7.99,
      category: FoodCategory.lunch,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Ice Cream',
      description: 'Ice Cream with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 3.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Cake',
      description: 'Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Coffee',
      description: 'Coffee with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 1.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Tea',
      description: 'Tea with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 1.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Water',
      description: 'Water with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 0.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
    Food(
      name: 'Juice',
      description: 'Juice with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    // drinks
    Food(
      name: 'Coca Cola',
      description: 'Coca Cola with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Pepsi',
      description: 'Pepsi with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Fanta',
      description: 'Fanta with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Sprite',
      description: 'Sprite with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: '7up',
      description: '7up with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Mountain Dew',
      description: 'Mountain Dew with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Mirinda',
      description: 'Mirinda with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Dew',
      description: 'Dew with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Pepsi Max',
      description: 'Pepsi Max with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Pepsi Diet',
      description: 'Pepsi Diet with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Fanta Zero',
      description: 'Fanta Zero with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Sprite Zero',
      description: 'Sprite Zero with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    // desserts

    Food(
      name: 'Chocolate Cake',
      description: 'Chocolate Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Vanilla Cake',
      description: 'Vanilla Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Strawberry Cake',
      description: 'Strawberry Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Blueberry Cake',
      description: 'Blueberry Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Raspberry Cake',
      description: 'Raspberry Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Pineapple Cake',
      description: 'Pineapple Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Mango Cake',
      description: 'Mango Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Banana Cake',
      description: 'Banana Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),

    Food(
      name: 'Apple Cake',
      description: 'Apple Cake with tomato sauce',
      imagePath: 'lib/images/burger-with-melted-cheese',
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: 'Extra Cheese', price: 1.99),
        AddOn(name: 'Extra Sauce', price: 0.99),
      ],
    ),
  ];

  // Getters
  List<Food> get menu => _menu;
}
