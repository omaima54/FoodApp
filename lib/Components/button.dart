import 'package:flutter/material.dart';

class ButtonView extends StatefulWidget {
  final String title;
  final Color color;
 // ignore: prefer_typing_uninitialized_variables
 Function  function;
   ButtonView({Key? key, required this.title, required this.color, required this.function})
      : super(key: key);

  @override
  _ButtonViewState createState() => _ButtonViewState();
}

class _ButtonViewState extends State<ButtonView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: widget.color,
            elevation: 10,
            padding: const EdgeInsets.symmetric(vertical: 22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            )),
        onPressed:(){}, 
        child: Text(widget.title),
      ),
    );
  }
}
