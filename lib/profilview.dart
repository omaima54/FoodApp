

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/appbar.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: AppBarConst(txt: 'Profil'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: 102,
            height: 102,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/profil.jpg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/Group 894.png'),
              const SizedBox(width: 10),
              const Text(
                'Edit Profile',
                style: TextStyle(
                  color: Color(0xffFC6011),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Hi there Emilia!',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
                const Text(
            'Sign Out',
            style: TextStyle(fontSize: 11, color: Color(0xff7C7D7E)),
          ),
          const FieledView(text: 'hsjhag')
        ],
      ),
    );
  }
}


class FieledView extends StatefulWidget {
  final String text;
  const FieledView({Key? key, required this.text}) : super(key: key);

  @override
  _FieledViewState createState() => _FieledViewState();
}

class _FieledViewState extends State<FieledView> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
      child: TextFormField(
        initialValue: 'Emilia Clarke',
        textAlignVertical: TextAlignVertical.center,
  
      
        style:const TextStyle(fontSize: 14),
        textAlign: TextAlign.start,

        decoration: InputDecoration(
         
          fillColor: const Color(0xffF2F2F2),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
         
         label: const Padding(
           padding: EdgeInsets.only(left:30,top: 20),
           child: Text('Name'),
         ),
         contentPadding: const EdgeInsets.only(top:20),
        
          hintStyle:const TextStyle(color: Color(0xffB6B7B7))
        ),
      ),
    );
  }
}
