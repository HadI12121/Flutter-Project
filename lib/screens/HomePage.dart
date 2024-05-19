import 'package:flutter/material.dart';
import 'package:foodapp/components/MyDrawer.dart';
import 'package:foodapp/components/SilverAppBar.dart';
import 'package:foodapp/models/food.dart';
import '../components/MyCurrentLocation.dart';
import '../components/myDescriptionBox.dart';
import '../components/MyTabBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my current location
                const MyCurrentLocation(),
                // description box
                const MyDescriptionBox(),
              ],
            ),
          )
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(itemCount: 5,itemBuilder: (context,index)=>Text('First Tab Item'),),
            ListView.builder(itemCount: 5,itemBuilder: (context,index)=>Text('Second Tab Item'),),
            ListView.builder(itemCount: 5,itemBuilder: (context,index)=>Text('Third Tab Item'),),
            ListView.builder(itemCount: 5,itemBuilder: (context,index)=>Text('Forth Tab Item'),),
          ])
      ),
    );
  }
}