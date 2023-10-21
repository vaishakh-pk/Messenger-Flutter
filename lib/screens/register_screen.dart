import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_feild.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;
  const RegisterScreen({super.key, this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signup(){}
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
              const Text("Let's create an acoount for you!",
              style: TextStyle(
                fontSize: 16, 
              ),),
              //email textfeild
              const SizedBox(height: 25),
              MyTextFeild(controller: emailController, hintText: 'Email', obscureText: false),
              //password textfeild
              const SizedBox(height: 10),
              MyTextFeild(controller: passwordController, hintText: 'Password', obscureText: true),
              //confirm password textfeild
              const SizedBox(height: 10),
              MyTextFeild(controller: confirmpasswordController, hintText: 'Confirm Password', obscureText: true),
              //Sign in button
              const SizedBox(height: 25,),
              MyButton(text: 'Sign Up' ,onTap: signup,),
              // register
              const SizedBox(height: 50,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already a member ?'),
                  const SizedBox(width: 4,),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text('Sign In',
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