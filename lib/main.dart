import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/Resturant.dart';
import 'package:provider/provider.dart';
import 'theme/ThemeProvider.dart';  // Make sure the path is correct
import 'auth/LoginOrRegister.dart';

Future main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyCCnk5convMLSN5qDu-U-KDlEWVWE-mj_Q", appId: "1:184065200019:web:e5aad06303262f626de266", messagingSenderId: "184065200019", projectId: "flutterapp-d127b"));
  await Firebase.initializeApp();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => Resturant()),
    ],child: const MyApp(),
    )
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
