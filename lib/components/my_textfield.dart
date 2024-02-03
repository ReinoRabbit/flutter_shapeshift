import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{
  
  final controller;
  final String hintText;
  final bool obscureText;
  
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                //controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true
                ),
              ),
            );
  }
}

