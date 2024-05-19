import 'package:flutter/material.dart';
import 'package:foodapp/components/MyDrawer.dart';
import 'package:foodapp/components/SilverAppBar.dart';

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
          CustomSilverAppBar(child: Text('Hello'), title: Text('Title')),
        ], body: Container(color: Colors.blue,),),
    );
  }
}
