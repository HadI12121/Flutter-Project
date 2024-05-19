import 'package:flutter/material.dart';

class CustomSilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const CustomSilverAppBar({super.key,
  required this.child,
  required this.title
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      pinned: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
      ],
      backgroundColor:Theme.of(context).colorScheme.background,
       title: title,
       flexibleSpace: FlexibleSpaceBar(background: child),
       );
  }
}