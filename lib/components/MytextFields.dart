import 'package:flutter/material.dart';

class MytextFields extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscuretext;

  const MytextFields({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
          border: OutlineInputBorder(), // Default border
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green, // Color of the border when the field is focused
              width: 2.0,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey, // Change this to your preferred hint text color
            fontSize: 16.0, // Change this to your preferred font size
            fontStyle: FontStyle.italic, // Change this to your preferred font style
          ),
        ),
      ),
    );
  }
}
