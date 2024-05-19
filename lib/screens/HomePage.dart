import 'package:flutter/material.dart';
import 'package:foodapp/components/MyDrawer.dart';
import 'package:foodapp/components/SilverAppBar.dart';
import '../components/MyCurrentLocation.dart';
import '../components/myDescriptionBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
              title: Text('Title')),
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
