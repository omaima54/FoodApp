import 'package:flutter/material.dart';

class SearchFood extends StatefulWidget {
  const SearchFood({ Key? key }) : super(key: key);

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  @override
  Widget build(BuildContext context) {
    return    Container(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: TextField(
              
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF2F2F2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none),
                  hintText: 'Search Food',
                  hintStyle:
                      const TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                  prefixIcon: const Icon(Icons.search)),
            ),
          );
  }
}