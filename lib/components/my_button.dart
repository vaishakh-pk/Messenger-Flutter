import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? OnTap;
  final String text;
  const MyButton({super.key, this.OnTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Text(text,
        style: TextStyle(color: Colors.white),),
      ),
    );
  }
}