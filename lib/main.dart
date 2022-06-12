import 'package:flutter/material.dart';

import 'package:flutter_application_1/profilview.dart';

import 'package:flutter_application_1/signin.dart';
import 'package:flutter_application_1/signup.dart';









void main(){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const ProfilView(),
      routes: {
     'login': (context) =>const SingIn(),
      'signUp':(context) => const SignUp(),
     
      }
    );
  }
}