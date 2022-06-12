import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/button.dart';
import 'package:flutter_application_1/Components/textfieled.dart';


class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            const Text('Sign Up',style: TextStyle(fontSize: 30),),
            const Text('Add your details to sign up',style: TextStyle(fontSize: 14),),
            const TextFieledView(text: 'Name'),
            const TextFieledView(text: 'Email'),
            const TextFieledView(text: 'Mobile No'),
            const TextFieledView(text: 'Address'),
            const TextFieledView(text: 'Password'),
            const TextFieledView(text: 'Confirm Password'),
             ButtonView(title: 'Sign Up', color:const Color(0xffFC6011), function: (){
              Navigator.of(context).pushNamed('login');
            },),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                 Text('Already have an Account?'),
                 Text('Login',style: TextStyle(color: Color(0xffFC6011),fontSize: 14,fontWeight: FontWeight.bold),),
              ],
            )

          ],
        ),
      ),
      
    );
  }
}