import 'package:flutter/material.dart';
import 'package:messenger/screens/login_screen.dart';
import 'package:messenger/screens/register_screen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //Initially show login page
  bool showLoginPage = true;

  //toggle between login and register
  void togglePages()
  {
    setState(() {
      showLoginPage =! showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if (showLoginPage)
   {
    return LoginScreen(onTap: togglePages);
   }
   else
   {
    return RegisterScreen(onTap: togglePages,);
   }
  }
}