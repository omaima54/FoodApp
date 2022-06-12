import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/button.dart';
import 'package:flutter_application_1/Components/buttonicon.dart';
import 'package:flutter_application_1/Components/textfieled.dart';


class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      body: Container(
        margin:const EdgeInsets.only(top: 60),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30, color: Color(0xff4A4B4D)),
              ),
            ),
           const SizedBox(height: 10),
            const Text(
              'Add your details to login',
              style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
            ),
            const SizedBox(height: 60),
            const TextFieledView(text: "Your Email"),
            const TextFieledView(text: "Password"),
            const SizedBox(height: 40),
            ButtonView(title: 'Login', color:const Color(0xffFC6011) , function: (){
              Navigator.of(context).pushNamed('signUp');
            },),
            const SizedBox(height: 10),
            const Text(
              'Forgot your password?',
              style: TextStyle(color: Color(0xff7C7D7E)),
            ),
            const SizedBox(height: 40),
            const Text('or Login With',
                style: TextStyle(color: Color(0xff7C7D7E))),
                const SizedBox(height: 20),
            const ButtonWithIcon(
              title: 'Login with Facebook',
              color: Color(0xff367FC0),
              icon: 'assets/icons/Group8196.png',
            ),
            const ButtonWithIcon(
              title: 'Login with Google',
              color: Color(0xffDD4B39),
              icon: 'assets/icons/Group 8197.png',
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
