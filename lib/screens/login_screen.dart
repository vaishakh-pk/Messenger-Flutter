import 'package:flutter/material.dart';
import 'package:messenger/components/my_button.dart';
import 'package:messenger/components/my_text_feild.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onTap;
  const LoginScreen({super.key, this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void signin(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              //logo
              Center(child: Icon(Icons.message, size: 100,color: Colors.grey[800],)),
              //welcomeback msg
              const SizedBox(height: 30),
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
              MyButton(text: 'Sign In' ,onTap: signin,),
              // register
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member ?'),
                  const SizedBox(width: 4,),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text('Register Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
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