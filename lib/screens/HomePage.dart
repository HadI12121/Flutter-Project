import 'package:flutter/material.dart';
import 'package:foodapp/components/MyDrawer.dart';
import 'package:foodapp/components/MyFoodTile.dart';
import 'package:foodapp/components/SilverAppBar.dart';
import 'package:foodapp/models/Resturant.dart';
import 'package:foodapp/models/food.dart';
import 'package:provider/provider.dart';
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

  List <Food> _filterMenuByCategory (FoodCategory category , List<Food>fullMenu){
    return fullMenu.where((food) => food.category==category).toList();
  }

  List <Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category){
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder:(context,index){
          final food = categoryMenu[index];
          return MyFoodTile(food: food, onTap: (){});
        });
    }).toList();
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
        body: Consumer<Resturant>(builder:(context, resturant, child) =>TabBarView(
          controller: _tabController,
          children: 
            getFoodInThisCategory(resturant.menu)        ) ,)
      ),
    );
  }
}