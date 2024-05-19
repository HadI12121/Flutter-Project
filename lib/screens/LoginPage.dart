import 'package:flutter/material.dart';
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
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

   void LoginButton(){
    /*
      backend authentication
    */
  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));

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
              FormButton(onTap:LoginButton, text: "Sign In"),
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
}
