import 'package:flutter/material.dart';
import 'package:flutter_shapeshift/components/logo_image.dart';
import 'package:flutter_shapeshift/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                logoWidget("lib/images/logo.png"),
                SizedBox(height: 5,),
                Text("Login to Shape Shift",
                  style: TextStyle(fontSize: 20),),
                SizedBox(height: 50,),
                textFieldWidget("Enter email here", Icons.person_outline, false, _emailTextController),
                SizedBox(height: 40,),
                textFieldWidget("Enter password here", Icons.lock_outline, true, _passwordTextController),
                SizedBox(height: 40,),
                ]),
            )
          ),
        ),
      ),
    );
  }
}