import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/appbar.dart';
import 'package:flutter_application_1/Components/button.dart';

class OffersView extends StatefulWidget {
  const OffersView({Key? key}) : super(key: key);

  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  List list = [
    {
      'image': 'assets/images/pexels-abhinav-goswami-291528.jpg',
      'titre': 'French Apple Pie',
      'rating': '4.9',
      'soustitre': 'Minute by tuk tuk ',
    },
    {
      'image': 'assets/images/pexels-tina-nord-1775285.jpg',
      'titre': 'Dark Chocolate Cake',
      'rating': '4.7',
      'soustitre': 'Cakes by Tella',
    },
    {
      'image': 'assets/images/pexels-polina-tankilevitch-4109996.jpg',
      'titre': 'Street Shake',
      'rating': '4.9',
      'soustitre': 'Café Racer  ',
    },
    {
      'image': 'assets/images/pexels-tina-nord-1775285.jpg',
      'titre': 'Fudgy Chewy Brownies',
      'rating': '4.9',
      'soustitre': 'Minute by tuk tuk ',
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: AppBarConst(txt: 'Latest Offers'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Text('Find discounts, Offers special'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70, left: 10, top: 40),
            child: ButtonView(
                title: 'Check Offers',
                color: const Color(0xffFC6011),
                function: () {}),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: size.height / 4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(list[i]['image']),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.only(left: 15,top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
                            Text(
                              list[i]['titre'],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFC6011),
                                ),
                                Text(
                                  list[i]['rating'],
                                  style: const TextStyle(
                                      fontSize: 14, color: Color(0xffFC6011)),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  list[i]['soustitre'],
                                  style: const TextStyle(
                                      fontSize: 14, color: Color(0xffB6B7B7)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffFC6011)),
                                  ),
                                ),
                                const Text(
                                  'Desserts',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xffB6B7B7)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
