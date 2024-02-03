import 'package:flutter/material.dart';
//import 'package:flutter_shapeshift/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[200],
    body: SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            //--logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50), //just white spacing
            //--welcome text
            Text(
              'Welcome to Shape Shift!',
              style: TextStyle(color: Colors.grey[700], fontSize: 20,),
            ),
            const SizedBox(height: 25),
            //--username
            // MyTextField(
            //   controller: ,
            //   hintText: , ---------------checkpoint
            //   obscureText: ,
            // ),
            //--password
            //MyTextField(),
            //--forgot password

            //--sign in btn
        
            //--other sign in section
        
          ],
        ),
      ),
    ),
  );
}

}