import 'package:flutter/material.dart';
import 'package:messenger/components/my_button.dart';
import 'package:messenger/components/my_text_feild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              //logo
              const Center(child: Icon(Icons.message, size: 80,)),
              //welcomeback msg
              const SizedBox(height: 50),
              const Text("Welcome back, you've been missed!",
              style: TextStyle(
                fontSize: 16, 
              ),),
              //email textfeild
              const SizedBox(height: 25),
              MyTextFeild(controller: emailController, hintText: 'Email', obscureText: false),
              //password textfeild
              const SizedBox(height: 10),
              MyTextFeild(controller: passwordController, hintText: 'Password', obscureText: true),
              //Sign in button
              const SizedBox(height: 25,),
              MyButton(text: 'Sign In' ,OnTap: (){},)
              // register
            ],
          ),
        ),
      ),
    );
  }
}