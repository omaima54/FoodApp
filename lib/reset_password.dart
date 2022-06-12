import 'package:flutter/material.dart';

import 'package:flutter_application_1/Components/button.dart';
import 'package:flutter_application_1/Components/textfieled.dart';

class RessetPassword extends StatefulWidget {
  const RessetPassword({Key? key}) : super(key: key);

  @override
  State<RessetPassword> createState() => _RessetPasswordState();
}

class _RessetPasswordState extends State<RessetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          const SizedBox(height: 50,),
          const Text(
            "Reset Password",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff4A4B4D)),
          ),
           const SizedBox(height: 20),
          const Text("Please enter your email to receive a "),
           const SizedBox(height: 10),
          const Text("link to  create a new password via email"),
           const SizedBox(height: 60),
          const TextFieledView(text: "Email",),
           const SizedBox(height: 20),
          
          ButtonView(title: "Send", color: const Color(0xffFC6011), function:(){
            Navigator.of(context).pushNamed("");
          })
        ],
      ),
    );
  }
}
