import 'package:flutter/material.dart';


class ButtonWithIcon extends StatefulWidget {
  final String title,icon;
  final Color color;
  const ButtonWithIcon({Key? key, required this.title, required this.color, required this.icon})
      : super(key: key);

  @override
  _ButtonWithIconState createState() => _ButtonWithIconState();
}

class _ButtonWithIconState extends State<ButtonWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.icon,),
            const SizedBox(width: 20),
            Text(widget.title),
          ],
        )
      ),
    );
  }
}
