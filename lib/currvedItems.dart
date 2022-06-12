import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/signup.dart';

import 'homepage.dart';
import 'menu_view.dart';

class CurrvedItems extends StatefulWidget {
  const CurrvedItems({Key? key}) : super(key: key);

  @override
  State<CurrvedItems> createState() => _CurrvedItemsState();
}

class _CurrvedItemsState extends State<CurrvedItems> {
  int _currentTab = 2;
  final List<Widget> screens = const <Widget>[
    MenuView(),
    LoginView(),
    Homepage(),
    MenuView(),
    SignUp(),
  ];
  void _changeItems(int value) {
    setState(() {
      _currentTab = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color(0xffFC6011),
        animationCurve: Curves.decelerate,
        onTap: _changeItems,
        index: _currentTab,
        items: <Widget>[
          Newwidget(
            icon: Icons.menu,
            title: 'Menu',
            index: _currentTab,
          ),
          Newwidget(
            icon: Icons.ac_unit,
            title: 'offers',
            index: _currentTab,
          ),
          Newwidget(
            icon: Icons.home,
            title: 'home',
            index: _currentTab,
          ),
          Newwidget(
            icon: Icons.person,
            title: 'profile',
            index: _currentTab,
          ),
          Newwidget(
            icon: Icons.more_horiz,
            title: 'More',
            index: _currentTab,
          ),
        ],
      ),
      body: screens.elementAt(_currentTab),
    );
  }
}

class Newwidget extends StatelessWidget {
  final int index;
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String title;
  const Newwidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
