import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/auth/FirebaseServices.dart';
import '../components/MytextFields.dart';
import '../components/FormButton.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {

  final void Function()? onTap;

  LoginPage({super.key,
  required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseServices _auth = FirebaseServices();
  
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login Form',
                style: TextStyle(
                  fontSize: 33.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 10.0),
              MytextFields(
                controller: emailController,
                hintText: "Email",
                obscuretext: false,
              ),
              SizedBox(height: 10.0),
              MytextFields(
                controller: passwordController,
                hintText: "Password",
                obscuretext: true,
              ),
              const SizedBox(height: 25.0),
              FormButton(onTap:_signIn, text: "Sign In"),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a Member',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _signIn() async {
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully signin");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    } else {
      print("Some Error Occurred");
    }
  }


}
