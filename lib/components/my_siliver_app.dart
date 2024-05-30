import 'package:flutter/material.dart';

class MySiliverApp extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySiliverApp({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340.0,
      collapsedHeight: 120.0,
      pinned: true,
      floating: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('SunSet Dinner'),
      flexibleSpace: FlexibleSpaceBar(
        background:
            Padding(padding: const EdgeInsets.only(bottom: 50), child: child),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
