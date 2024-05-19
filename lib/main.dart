import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/ThemeProvider.dart';  // Make sure the path is correct
import 'auth/LoginOrRegister.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
