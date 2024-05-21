import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/components/FormButton.dart';
import 'package:foodapp/components/MytextFields.dart';
import 'package:foodapp/screens/LoginPage.dart';
import '../auth/FirebaseServices.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseServices _auth = FirebaseServices();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confrimpasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confrimpasswordController.dispose();
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
                'Register Form',
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
              SizedBox(height: 10.0),
              MytextFields(
                controller: confrimpasswordController,
                hintText: "Confirm Password",
                obscuretext: true,
              ),
              const SizedBox(height: 25.0),
              FormButton(onTap: _signUp, text: "Sign Up"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have a account?',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Sign In',
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

  void _signUp() async {
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully created");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(onTap: widget.onTap),
        ),
      );
    } else {
      print("Some Error Occurred");
    }
  }
}
