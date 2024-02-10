import 'package:flutter/material.dart';
import 'package:flutter_shapeshift/components/button_reuseable.dart';
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
                const SizedBox(height: 5,),
                const Text("Login to Shape Shift",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                const SizedBox(height: 50,),
                textFieldWidget("Enter email here", Icons.person_outline, false, _emailTextController),
                const SizedBox(height: 40,),
                textFieldWidget("Enter password here", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(height: 40,),
                reusableButton(context, true, () {})
                ]),
            )
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account?",
        style: TextStyle(color: Colors.white))
        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(context,
        //       MaterialPageRoute(builder: (context) => SignUpPage()));
        //   },
        // )
      ],
    );
  }

}