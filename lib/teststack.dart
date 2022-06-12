
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(

      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 50,
            child: Container(
          
             width: size.width * 0.8,
            height: 87,
            decoration: const BoxDecoration(
              boxShadow:  [
                BoxShadow(
                  blurRadius: 2,
                 
                )
              ],
                color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            ),
          ),
          Positioned(
            top: 10,
            child: Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/plat2.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Food',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                Text(
                  '120 Items',
                  style: TextStyle(
                      color: Color(0xffB6B7B7),
                      fontSize: 11,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 1,
            child: Container(
              width: 33,
              height: 33,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    blurRadius: 1.0,
                  )
                ],
              ),
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xffFC6011),
              ),
            ),
          )
        ],
      ),
    );
  }
}
