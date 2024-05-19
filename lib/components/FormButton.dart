import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  FormButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.orange, // Background color of the button
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        )),
      ),
    );
  }
}
