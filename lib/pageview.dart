import 'package:flutter/material.dart';

import 'package:flutter_application_1/sliderview.dart';

import 'Components/button.dart';

class PageViewFood extends StatefulWidget {
  const PageViewFood({Key? key}) : super(key: key);

  @override
  State<PageViewFood> createState() => _PageViewFoodState();
}

class _PageViewFoodState extends State<PageViewFood> {
      int currentpage = 0;
 
  List<Map<String, String>> listData = [
    {
      "image": "assets/images/Find foodyoulovevector.png",
      "title": "Find Food You Love",
      "text":
              "Discover the best foods from over 1000 \n restaurants and fast delivery to your doorstep",
    },
    {
      "image": "assets/images/Deliveryvector.png",
      "title": "Fast Delivery",
      "text": "Fast food delivery to your home, office \n wherever you are",
    },
    {
      "image": "assets/images/Livetrackingvector.png",
      "title": "Live Tracking",
      "text": "Real time tracking of your food on the app \n once you placed the order",
    },
  ];
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
     
        children: [
          Expanded(
            
            child: PageView.builder(
                onPageChanged: (val) {
                  setState(() {
                    currentpage = val;
                  });
                },
                itemCount: listData.length,
              
                itemBuilder: (context, i) {
                  return SliderViwe(
                    list: listData[i],
                    currentindex: i,
                  );
                }),
          ),
           
            const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.only(bottom: 80),
            child: ButtonView(
                title: 'Next', color: const Color(0xffFC6011), function: () {}),
          )
        ],
      ),
    );
  }
  
}

 
               


