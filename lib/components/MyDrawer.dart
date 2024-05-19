import 'package:flutter/material.dart';
import 'package:foodapp/components/DrawerTile.dart';
import 'package:foodapp/screens/SettingPage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor:Color.fromARGB(255, 217, 217, 217),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Icon(Icons.lock_open_rounded,
            size: 80,
            color: Colors.grey[700],),
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Divider(color: Colors.white,),
          ),
          DrawerTile(text: 'H O M E', icon: Icons.home, onTap:(){Navigator.pop(context);}),
          DrawerTile(text: 'S E T T I N G', icon: Icons.settings, onTap:(){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingPage()));
          }),
          const Spacer(),
          DrawerTile(text: 'L O G O U T', icon: Icons.logout, onTap:(){}),
          const SizedBox(height: 25,)
        ],
      ),
    );

  }

}