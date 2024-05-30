import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/models/cart_item.dart';
import 'package:restaurant_app/models/food.dart';
import 'package:restaurant_app/models/restarurant.dart';

import 'my_quality_selector.dart';

class MycardTitle extends StatelessWidget {
  final CartItem cartItem;
  const MycardTitle({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restraurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(cartItem.food.imagePath,
                            width: 100, height: 100),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          Text(cartItem.food.name),
                          Text('\$' + cartItem.food.price.toString()),
                        ],
                      ),
                      const Spacer(),
                      QualitySelector(
                          quality: cartItem.quantity,
                          food: cartItem.food,
                          onIncerement: () {
                            restaurant.addToCart(
                                cartItem.food, cartItem.selectedAddOns);
                          },
                          onDecrement: () {
                            restaurant.removeFromCart(cartItem);
                          })
                    ],
                  ),
                ),

                // AddOns
                SizedBox(
                    height: cartItem.selectedAddOns.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      children: cartItem.selectedAddOns
                          .map((addOn) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: FilterChip(
                                  label: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(addOn.name),
                                      Text(
                                        ' \$${addOn.price}',
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                      ),
                                    ],
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary),
                                  ),
                                  onSelected: (value) {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                      fontSize: 12),
                                ),
                              ))
                          .toList(),
                    )),
              ]),
            ));
  }
}
