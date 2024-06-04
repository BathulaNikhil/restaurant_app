import 'package:flutter/material.dart';
import 'package:restaurant_app/components/my_current_location.dart';
import 'package:restaurant_app/components/my_description_box.dart';
import 'package:restaurant_app/components/my_drawer.dart';
import 'package:restaurant_app/components/my_siliver_app.dart';
import 'package:restaurant_app/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  // tab controller
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySiliverApp(
            title: MyTabBar(controller: ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                //my current location
                MyCurrentLocation(),

                //my description box
                MyDescriptionBox(),
              ],
            ),
          )
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
