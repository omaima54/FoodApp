import 'package:flutter/material.dart';

class AppBarConst extends StatefulWidget {
  final String txt;
  const AppBarConst({ Key? key, required this.txt }) : super(key: key);

  @override
  State<AppBarConst> createState() => _AppBarConstState();
}

class _AppBarConstState extends State<AppBarConst> {
  @override
  Widget build(BuildContext context) {
    return     Container(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  widget.txt,
                  style: const TextStyle(fontSize: 20, color: Color(0xff4A4B4D)),
                ),
                const Icon(Icons.shopping_cart),
              ],
            ),
          );
  }
}