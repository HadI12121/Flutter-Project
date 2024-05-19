import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const DrawerTile({super.key,
  required this.text,
  required this.icon,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: Text(text,style: TextStyle(color: Colors.grey[600]),),
        leading: Icon(icon,color: Colors.grey[700],),
        onTap: onTap,
      ),
    );
  }
}