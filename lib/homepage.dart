
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/appbar.dart';
import 'package:flutter_application_1/Components/searchfood.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Initial Selected Value
  String dropdownvalue = 'Current Location';

  List list = [
    {'image': 'assets/images/plat1.jpg', 'sous-titre': 'Offers'},
    {'image': 'assets/images/plat2.jpg', 'sous-titre': 'Sri Lankan'},
    {'image': 'assets/images/plat4.jpg', 'sous-titre': 'Italian'},
    {'image': 'assets/images/plat3.jpg', 'sous-titre': 'Indian'}
  ];
  List listResto = [
    {
      'image': 'assets/images/ivan-torres-MQUqbmszGGM-unsplash.jpg',
      'name': 'Minute by tuk tuk'
    },
    {
      'image': 'assets/images/jimmy-dean-Yn0l7uwBrpw-unsplash.jpg',
      'name': 'Café de Noir'
    },
    {
      'image': 'assets/images/lily-banse--YHSwy6uqvk-unsplash.jpg',
      'name': 'Bakes by Tella'
    },
  ];

  // List of items in our dropdown menu
  var items = [
    'Current Location',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
      const AppBarConst(txt: 'Good morning Akila!',),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: const Text(
              'Delivering to',
              style: TextStyle(fontSize: 11, color: Color(0xffB6B7B7)),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton(
       underline: const SizedBox(),
              // Initial Value
              value: dropdownvalue,
      
              // Down Arrow Icon
              icon: Container(
                  padding: const EdgeInsets.only(left: 40),
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xffFC6011),
                  )),
      
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  
               
                  value: items,
                  child: Text(
                    items,
                    style:
                        const TextStyle(fontSize: 16, color: Color(0xff7C7D7E)),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
       const SearchFood(),
          Expanded(
            flex: 4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, i) {
                  return Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 90,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('${list[i]['image']}'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Text(
                              '${list[i]['sous-titre']}',
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4A4B4D)),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
          const TitleListResto(text: 'Popular Restaurents '),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: listResto.length,
                itemBuilder: (context, i) {
                  return popularRestaurents(size, "${listResto[i]['image']}",
                      "${listResto[i]['name']}");
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          const TitleListResto(text: 'Most Popular '),
         
          Expanded(
            flex: 4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, i) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width / 2,
                              height: size.height * 0.1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/plat4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const Text(
                              'Café De Bambaa',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Café',
                                  style: TextStyle(
                                      color: Color(0xffB6B7B7), fontSize: 12),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFC6011),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const Text(
                                  ' Western Food',
                                  style: TextStyle(
                                      color: Color(0xffB6B7B7), fontSize: 12),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  '4.9',
                                  style: TextStyle(
                                      color: Color(0xffFC6011), fontSize: 12),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFC6011),
                                ),
                              ],
                            )
                          
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
          const TitleListResto(text: 'Recent Items '),
          Expanded(
              flex: 3,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        children: [
                          Row(
                         
                            children: [
                              Container(
                                width: size.width / 3,
                                height: size.height * 0.1,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/jimmy-dean-Yn0l7uwBrpw-unsplash.jpg'),
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const SizedBox(width: 20,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Mulberry Pizza by Josh',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Café',
                                        style: TextStyle(
                                            color: Color(0xffB6B7B7),
                                            fontSize: 12),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        width: 3,
                                        height: 3,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFC6011),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      const Text(
                                        ' Western Food',
                                        style: TextStyle(
                                            color: Color(0xffB6B7B7),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFC6011),
                                      ),
                                      Text(
                                        '4.9',
                                        style: TextStyle(
                                            color: Color(0xffFC6011),
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '(124 Ratings)',
                                        style: TextStyle(
                                            color: Color(0xffB6B7B7),
                                            fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })),
        ],
      ),
    );
  }

  popularRestaurents(Size size, String img, String name) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.2,
          width: double.infinity,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            name,
            style: const TextStyle(
                color: Color(0xff4A4B4D),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffFC6011),
            ),
            const Text(
              '4.9',
              style: TextStyle(color: Color(0xffFC6011), fontSize: 12),
            ),
            const SizedBox(width: 10),
            const Text(
              '(124 ratings) Café',
              style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
            ),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              width: 3,
              height: 3,
              decoration: BoxDecoration(
                  color: const Color(0xffFC6011),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(width: 10),
            const Text(
              ' Western Food',
              style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}

class TitleListResto extends StatelessWidget {
  final String text;
  const TitleListResto({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(color: Color(0xff4A4B4D), fontSize: 20),
          ),
          const Text(
            'View all',
            style: TextStyle(color: Color(0xffFC6011), fontSize: 13),
          ),
        ],
      ),
    );
  }
}

