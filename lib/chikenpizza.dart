import 'package:flutter/material.dart';


class ChickenPizza extends StatefulWidget {
  const ChickenPizza({Key? key}) : super(key: key);

  @override
  State<ChickenPizza> createState() => _ChickenPizzaState();
}

class _ChickenPizzaState extends State<ChickenPizza> {
  final List<String> genderItems = [
    'big',
    'small',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/ivan-torres-MQUqbmszGGM-unsplash.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  Icon(Icons.shopping_cart, color: Colors.white)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height / 1.5,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(42),
                    topLeft: Radius.circular(42),
                  )),
              child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tandoori Chicken Pizza',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4A4B4D)),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Color(0xffFC6011),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFC6011),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFC6011),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFC6011),
                              ),
                              Icon(
                                Icons.star_border,
                                color: Color(0xffFC6011),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '4 Star Ratings',
                                style: TextStyle(
                                    color: Color(0xffFC6011), fontSize: 11),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'Rs. 750',
                                    style: TextStyle(
                                        color: Color(0xff4A4B4D), fontSize: 31),
                                  ),
                                  Text('/ per Portion',
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontSize: 12)),
                                ],
                              )
                            ],
                          ),
                          const Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada'),
                          const SizedBox(height: 20),
                          const Text(
                            'Customize your Order',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          dropdownwidget('- Select the size of portion -'),
                          const SizedBox(
                            height: 10,
                          ),
                          dropdownwidget('- Select the ingredients -'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Number of Portions'),
                              const SizedBox(width: 40),
                              containerwithClick(size, '-'),
                              Container(
                                width: size.width / 7.5,
                                height: size.height * 0.04,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: const Color(0xffFC6011)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                    child: Text(
                                  '2',
                                  style: TextStyle(
                                      color: Color(0xffFC6011), fontSize: 14),
                                )),
                              ),
                              containerwithClick(size, '+'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: size.height / 6,
                          width: size.width / 4,
                          decoration: const BoxDecoration(
                              color: Color(0xffFC6011),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(38),
                                bottomRight: Radius.circular(38),
                              )),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15, left: 55, right: 30),
                          child: Container(
                            height: size.height / 7,
                            width: size.width / 1.3,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                    offset: Offset.zero)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(38),
                                bottomLeft: Radius.circular(38),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 10,),
                                const Text(
                                  'Total Price',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Text(
                                  'LKR 1500',
                                  style: TextStyle(fontSize: 21),
                                ),
                                Button(size: size),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 45,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset.zero,
                                    spreadRadius: 1)
                              ],
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/icons/shopping-cart.png',
                              color: const Color(0xffFC6011),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container containerwithClick(Size size, String text) {
    return Container(
      width: size.width / 7.5,
      height: size.height * 0.04,
      decoration: BoxDecoration(
        color: const Color(0xffFC6011),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      )),
    );
  }

  DropdownButtonFormField<String> dropdownwidget(String text) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        fillColor: const Color(0xffF2F2F2),
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      isExpanded: true,
      hint: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 40,
      items: genderItems
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      onChanged: (value) {
        //Do something when changing the item if you want.
      },
      onSaved: (value) {
        selectedValue = value.toString();
      },
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width / 2,
      height:size.height/15,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: const Color(0xffFC6011),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              )),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.add_shopping_cart_rounded, color: Colors.white),
              Text('Add to Cart'),
            ],
          )),
    );
  }
}
