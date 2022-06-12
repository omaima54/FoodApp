import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/searchfood.dart';

class DessertView extends StatefulWidget {
  const DessertView({Key? key}) : super(key: key);

  @override
  State<DessertView> createState() => _DessertViewState();
}

class _DessertViewState extends State<DessertView> {
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
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                ),
                Text(
                  'Desserts',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(Icons.shopping_cart)
              ],
            ),
          ),
          const SearchFood(),
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.only(left: 50),
                    width: double.infinity,
                    height: size.height / 4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(list[i]['image']),

                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          list[i]['titre'],
                          style:const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                              
                        ),
                       Row(
                         children: [
                            const Icon(Icons.star,color: Color(0xffFC6011),),
                            Text(list[i]['rating'],style: const TextStyle(fontSize: 14,color: Color(0xffFC6011)),),
                            const SizedBox(width: 10),
                            Text(list[i]['soustitre'],style: const TextStyle(fontSize: 14,color: Colors.white),),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text('.',style: TextStyle(fontSize: 14,color: Color(0xffFC6011)),),
                              
                            ),
                           const Text('Desserts',style:  TextStyle(fontSize: 14,color: Colors.white),)
                         ],
                       )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
