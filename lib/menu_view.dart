import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/appbar.dart';
import 'package:flutter_application_1/Components/searchfood.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const AppBarConst(txt: 'Menu'),
            const SearchFood(),
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: size.height * 0.7,
                  width: size.width / 3,
                  decoration: const BoxDecoration(
                      color: Color(0xffFC6011),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                ),
                Column(
                  children: [
                    stackwidget('Food', '120 Items'),
                    stackwidget('Beverages', '220 Items'),
                    stackwidget('Desserts', '155 Items'),
                    stackwidget('Promotions', '25 Items'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget stackwidget(String titre, String soustitre) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 25,bottom: 20),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40, right: 20),
            child: Container(
              width: size.width * 0.8,
              height: size.height * 0.11,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 4, spreadRadius: 1, offset: Offset.zero)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(titre,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold,)),
                    Text(soustitre,style: const TextStyle(color: Color(0xffB6B7B7)),),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 4,
            top: 15,
            child: Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 3)],
                image: DecorationImage(
                    image: AssetImage('assets/images/plat2.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 35,
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
                )),
          )
        ],
      ),
    );
  }
}

/*
  Container(
          width: size.width * 0.8,
          height: 87,
          decoration: const BoxDecoration(
            boxShadow: [
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
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/images/plat2.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Column(
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
        Container(
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
        )
*/