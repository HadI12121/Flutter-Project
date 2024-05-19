import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Deliver now"),
        Row(
          children: [
            // address
             Text("6901 Hollywood Blv"),

            // drop down menu www
            Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
      ],
    );
  }
}