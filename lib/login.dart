

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/button.dart';

import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/01.png"),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              SvgPicture.asset(
                "assets/images/Shaped subtraction.svg",
                width: double.infinity,
                alignment: Alignment.topCenter,
              ),
              Image.asset(
                "assets/images/Background objects.png",
                width: double.infinity,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: SvgPicture.asset("assets/images/Monkeyface.svg"),
          )),
          Positioned(
            top: size.height / 1.8,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Meal",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFC6011)),
                    ),
                    Text("Monkey",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold))
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Food Delivery".toUpperCase(),
                  style: const TextStyle(fontSize: 10, letterSpacing: 3),
                ),
                const SizedBox(height: 44),
                SizedBox(
                    width: size.width / 1.3,
                    child: const Text(
                      "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    )),
                const SizedBox(height: 44),
                ButtonView(
                  title: "Login",
                  color: const Color(0xffFC6011),
                  function: (){
                    Navigator.of(context).pushNamed('login');
                  },
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 10,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xffFC6011)),
                          borderRadius: BorderRadius.circular(28),
                        )),
                    onPressed: () {},
                    child: const Text('Create an Account',
                        style: TextStyle(color: Color(0xffFC6011))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
