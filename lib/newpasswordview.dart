

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/button.dart';
import 'package:flutter_application_1/Components/textfieled.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          children:  [
            const SizedBox(height: 50,),
            const Text(
              'New Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            Column(
              children:const [
                 Text("Please enter your email to receive a ",style: TextStyle(color: Color(0xff7C7D7E),fontSize: 14),),
                 Text("link to  create a new password via email",style: TextStyle(color: Color(0xff7C7D7E),fontSize: 14),)
              ],
            ),
            const SizedBox(height: 50,),
            const TextFieledView(text: "New Password"),
            const SizedBox(height: 20,),
            const TextFieledView(text: "Confirm Password"),
            const SizedBox(height: 30,),
            ButtonView(title: "Next", color: const Color(0xffFC6011), function: (){})
          ],
        ),
      ),
    );
  }
}
