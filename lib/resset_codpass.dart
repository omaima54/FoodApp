import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/button.dart';

class RessetPasswordCode extends StatefulWidget {
  const RessetPasswordCode({Key? key}) : super(key: key);

  @override
  State<RessetPasswordCode> createState() => _RessetPasswordCodeState();
}

class _RessetPasswordCodeState extends State<RessetPasswordCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Column(
              children: const [
                Text(
                  "We have sent an OTP to",
                  style: TextStyle(fontSize: 25, color: Color(0xff4A4B4D)),
                ),
                Text(
                  "your Mobile",
                  style: TextStyle(fontSize: 25, color: Color(0xff4A4B4D)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: const [
                Text(
                  "Please check your mobile number 071*****12",
                  style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
                ),
                Text(
                  "continue to reset your password",
                  style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Textfieledwithstar(),
                Textfieledwithstar(),
                Textfieledwithstar(),
                Textfieledwithstar(),
              ],
            ),
            const SizedBox(height: 20),
            ButtonView(
                title: 'Next', color: const Color(0xffFC6011), function: () {}),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Didn't Receive?",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                ),
                Text(
                  ' Click Here',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xffFC6011)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Textfieledwithstar extends StatelessWidget {
  const Textfieledwithstar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(18),
      width: 56,
      child: TextField(
        decoration: InputDecoration(
            fillColor: const Color(0xffF2F2F2),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            hintText: '*',
            hintStyle: const TextStyle(
              color: Color(0xffB6B7B7),
              fontSize: 37,
            )),
      ),
    );
  }
}
