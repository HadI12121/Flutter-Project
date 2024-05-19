import 'package:flutter/material.dart';
import 'package:foodapp/screens/LoginPage.dart';
import 'package:foodapp/screens/RegisterPage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool showLoginPage=true;

  void Togglepages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: Togglepages);
    }else{
      return RegisterPage(onTap: Togglepages);
    }
  }
}