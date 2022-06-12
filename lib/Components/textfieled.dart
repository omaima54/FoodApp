import 'package:flutter/material.dart';

class TextFieledView extends StatefulWidget {
  final String text;
  const TextFieledView({Key? key, required this.text}) : super(key: key);

  @override
  _TextFieledViewState createState() => _TextFieledViewState();
}

class _TextFieledViewState extends State<TextFieledView> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
     
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(28)
     ),
      child: TextField(
        
        decoration: InputDecoration(
          
          fillColor: const Color(0xffF2F2F2),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintText:widget.text,
          hintStyle:const TextStyle(color: Color(0xffB6B7B7))
        ),
      ),
    );
  }
}
